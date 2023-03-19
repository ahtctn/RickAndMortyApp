//
//  RMCharacterModel.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 19.03.2023.
//

import Foundation

struct RMCharacterModel: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatusModel
    let species: String
    let type: String
    let gender: RMCharacterGenderModel
    let origin: RMOriginModel
    let location: RMSingleLocationModel
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}

