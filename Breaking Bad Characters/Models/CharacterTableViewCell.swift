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
    
    func configure(with character: CharacterInfo) {
        characterName.text = character.name
        characterNickname.text = character.nickname
        
        DispatchQueue.global().async {
            guard let imageUrl = URL(string: character.img) else { return }
            guard let imageData = try? Data(contentsOf: imageUrl) else { return }
            
            DispatchQueue.main.async {
                self.characterImage.image = UIImage(data: imageData)
            }
        }
    }
}
