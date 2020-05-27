//
//  FifthCEll.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class FifthCEll: UITableViewCell {
    
    @IBOutlet weak var headingLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    class func identifier() -> String {
        return String(describing: FifthCEll.self)
    }
}
