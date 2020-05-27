//
//  CircularCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class CircularCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var kurtasImg: UIImageView!
    @IBOutlet weak var kurtaLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.kurtasImg.setRounded()
    }
    
    class func identifier() -> String {
        return String(describing: CircularCell.self)
    }
    
}

