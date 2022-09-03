//
//  CharacterTableViewCell.swift
//  Breaking Bad Characters
//
//  Created by Olegio on 03.09.2022.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet var characterName: UILabel!
    @IBOutlet var characterNickname: UILabel!
    @IBOutlet var characterImage: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
