//
//  DetailTabCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

class DetailTabCoordinator: Coordinator {
    
    let window: UIWindow
    let tabBarController: UITabBarController
    
    let overviewNavigationController = UINavigationController()
    let statsNavigationViewController = UINavigationController()
    let tableNavigationController = UINavigationController()
    
    let overviewCoordinator: OverviewCoordinator
    let statsCoordinator: StatsCoordinator
    let tableCoordinator: TableCoordinator
    
    init(window: UIWindow, schedule: Schedule) {
        self.window = window
        self.tabBarController = UITabBarController()
        
        self.overviewCoordinator = OverviewCoordinator(presenter: overviewNavigationController)
        self.statsCoordinator = StatsCoordinator(presenter: statsNavigationViewController)
        self.tableCoordinator = TableCoordinator(presenter: tableNavigationController)
        
        let viewControllers: Array<UINavigationController> = [
            overviewNavigationController,
            statsNavigationViewController,
            tableNavigationController
        ]
        
        self.tabBarController.viewControllers = viewControllers
        self.tabBarController.tabBar.tintColor = .white
        self.tabBarController.tabBar.barTintColor = .clear
        
        self.overviewCoordinator.closedAction = {
            self.tabBarController.dismiss(animated: true, completion: nil)
        }
        
        self.tabBarController.selectedViewController = overviewNavigationController
    }

    func start() {
        self.window.rootViewController?.present(tabBarController, animated: true, completion: nil)
        //self.overviewCoordinator.start()
        self.statsCoordinator.start()
        self.tableCoordinator.start()
    }
    
//    func startFlow() {
//        currentCoordinator?.start
//    }
    
}
