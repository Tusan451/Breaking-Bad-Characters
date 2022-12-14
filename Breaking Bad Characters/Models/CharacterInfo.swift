//
//  CharacterInfo.swift
//  Breaking Bad Characters
//
//  Created by Olegio on 03.09.2022.
//

import Foundation

struct CharacterInfo: Decodable {
    let name: String
    let nickname: String
    let birthday: String
    let status: String
    let img: String
}
