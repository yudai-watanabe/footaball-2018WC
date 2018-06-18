//
//  AppDelegate.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private lazy var applicationCoordinator: ApplicationCoordinator = {
        guard let window = self.window else {
            fatalError("window is not found")
        }
        return ApplicationCoordinator(window: window)
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.applicationCoordinator.start()
        
        return true
    }


}

