//
//  SeventhCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class SeventhCell: UITableViewCell {
    
    @IBOutlet weak var headingLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    class func Identifier() -> String {
        return String(describing: SeventhCell.self)
    }
    
}
