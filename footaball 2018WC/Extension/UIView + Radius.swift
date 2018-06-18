//
//  UIView + Radius.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/18.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    
    }

}
