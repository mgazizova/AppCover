//
//  TrackList.swift
//  ArtCover
//
//  Created by Mariia Gazizova on 17.12.2021.
//

import UIKit

class TrackList: UITableViewController {

    let tracksArray = [
        "Mashas favorite song",
        "Song on repeat (Original mix)",
        "Never ever hear it again",
        "WTF"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracksArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        cell.imageView?.image = UIImage(named: tracksArray[indexPath.row])
        cell.textLabel?.text = tracksArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetails" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let details = segue.destination as? TrackDetails
                details?.trackTitle = tracksArray[indexPath.row]
            }
        }
    }


}
