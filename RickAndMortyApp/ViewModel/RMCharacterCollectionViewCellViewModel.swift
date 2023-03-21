//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 21.03.2023.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    public  let characterName: String
    private let characterStatus: RMCharacterStatusModel
    private let characterImageURL: URL?
    
    init(characterName: String,
         characterStatus: RMCharacterStatusModel,
         characterImageURL: URL?) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageURL = characterImageURL
    }
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = characterImageURL else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ??  URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        dataTask.resume()
    }
}
