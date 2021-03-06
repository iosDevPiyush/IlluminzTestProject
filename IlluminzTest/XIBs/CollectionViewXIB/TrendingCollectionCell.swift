//
//  TrendingCollectionCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class TrendingCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var clothsImg: UIImageView!
    @IBOutlet weak var clothsLbl: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clothsImg.setRoundCorners()
    }
    // MARK: - Function
    
    class func identifier() -> String {
        return String(describing: TrendingCollectionCell.self)
    }
    
}
