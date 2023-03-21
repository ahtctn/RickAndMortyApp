//
//  RMCharacterStatusModel.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 20.03.2023.
//

import Foundation

enum RMCharacterStatusModel: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
