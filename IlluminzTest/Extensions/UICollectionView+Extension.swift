//
//  UICollectionView+Extension.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    func registerCell(_ nibName: String, identifier: String = "", bundle: Bundle? = nil ) {
        var identifier = identifier
        if identifier.isEmpty {
            identifier = nibName
        }
        let nib: UINib = UINib(nibName: nibName, bundle: bundle)
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
}
