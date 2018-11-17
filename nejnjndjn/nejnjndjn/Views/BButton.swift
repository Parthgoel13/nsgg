//
//  BButton.swift
//  nejnjndjn
//
//  Created by Parth Goel on 14/11/18.
//  Copyright © 2018 Parth Goel. All rights reserved.
//

import UIKit

class BButton: UIButton {
    
    override func awakeFromNib(){
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
