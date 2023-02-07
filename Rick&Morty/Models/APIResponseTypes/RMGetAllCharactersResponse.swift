//
//  RMGetAllCharactersResponse.swift
//  Rick&Morty
//
//  Created by Erxhan Selmani on 07/02/2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let previous: String?
    }

    let info: Info
    let results: [RMCharacter]
}
