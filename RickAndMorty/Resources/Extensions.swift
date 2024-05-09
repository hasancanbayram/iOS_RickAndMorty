//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Hasan Can Bayram on 9.05.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
