//
//  NSObject + Base.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    
    public class var className: String? {
        return className(self)
    }
    
    public class func className(_ aClass: Swift.AnyClass) -> String? {
        let strClass: NSString = NSStringFromClass(aClass) as NSString
        return strClass.components(separatedBy: ".").last
    }
    
}
