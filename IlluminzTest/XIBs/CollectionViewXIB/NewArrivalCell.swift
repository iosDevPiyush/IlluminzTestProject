//
//  NewArrivalCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class NewArrivalCell: UICollectionViewCell {
    @IBOutlet weak var newArrivalImg: UIImageView!
    @IBOutlet weak var newArrivalName: UILabel!
    @IBOutlet weak var newArrivalPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.newArrivalImg.setRoundCorners()
    }
    class func identifier() -> String {
        return String(describing: NewArrivalCell.self)
    }
}
