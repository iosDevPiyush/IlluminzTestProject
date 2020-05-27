//
//  SecondImgCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class SecondImgCell: UITableViewCell {
    // MARK:- IBOutlets
    @IBOutlet weak var discountedImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Functions
    
    class func identifier() -> String {
        return String(describing: SecondImgCell.self)
    }
    
}
