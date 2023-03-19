//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 19.03.2023.
//

import UIKit

///Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character,
                                queryParametrs: [URLQueryItem(name: "name", value: "rick"),
                                                 URLQueryItem(name: "status", value: "alive")]
        )
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacterModel.self) { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
    }
    
}
