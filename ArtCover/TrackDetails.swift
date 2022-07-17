//
//  TrackDetails.swift
//  ArtCover
//
//  Created by Mariia Gazizova on 17.12.2021.
//

import UIKit

class TrackDetails: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!

    var trackTitle = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: trackTitle)
        label.text = trackTitle
        label.numberOfLines = 0
    }
}
