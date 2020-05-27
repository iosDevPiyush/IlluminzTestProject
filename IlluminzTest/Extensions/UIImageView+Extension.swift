//
//  UIImageView+Extension.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setRounded() {
        let radius = self.frame.width/2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    func setRoundCorners(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.height / 14
    }
}
