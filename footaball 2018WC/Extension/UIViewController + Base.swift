//
//  UIViewController + Base.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    
    class func instantiateFromStoryBoard<T: UIViewController> () -> T? {
        guard let name: String = self.className else {
            return nil
        }
        
        let storyBoard: UIStoryboard = UIStoryboard(name: name, bundle: nil)
        return storyBoard.instantiateInitialViewController() as? T
    }
    
}
