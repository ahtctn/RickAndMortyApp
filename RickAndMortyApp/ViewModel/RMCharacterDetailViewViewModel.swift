//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 22.03.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacterModel
    
    init(character: RMCharacterModel) {
        self.character = character
    }
    
    public var title: String {
        return character.name.uppercased() 
    }
}
