//
//  RMGetAllCharactersResponse.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 20.03.2023.
//

import Foundation

struct RMGetAllCharactersResponseModel: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacterModel]
}
