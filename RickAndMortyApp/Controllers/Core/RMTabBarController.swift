//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 19.03.2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navCharacters = UINavigationController(rootViewController: charactersVC)
        let navLocations = UINavigationController(rootViewController: locationsVC)
        let navEpisodes = UINavigationController(rootViewController: episodesVC)
        let navSettings = UINavigationController(rootViewController: settingsVC)
        
        navCharacters.tabBarItem = UITabBarItem(title: "Characters",
                                                image: UIImage(systemName: "person"),
                                                tag: 1)
        navLocations.tabBarItem = UITabBarItem(title: "Locations",
                                                image: UIImage(systemName: "globe"),
                                                tag: 2)
        navEpisodes.tabBarItem = UITabBarItem(title: "Episodes",
                                                image: UIImage(systemName: "tv"),
                                                tag: 3)
        navSettings.tabBarItem = UITabBarItem(title: "Settings",
                                                image: UIImage(systemName: "gear"),
                                                tag: 4)
        
        for nav in [navSettings, navEpisodes, navLocations, navCharacters] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navCharacters, navLocations, navEpisodes, navSettings], animated: true)
    }


}

