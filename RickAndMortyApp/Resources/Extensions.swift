//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 21.03.2023.
//

import UIKit
 
extension UIView {
    func addNewSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
