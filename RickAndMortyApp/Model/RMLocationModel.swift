//
//  LocationModel.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 19.03.2023.
//

import Foundation

struct RMLocationModel: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
