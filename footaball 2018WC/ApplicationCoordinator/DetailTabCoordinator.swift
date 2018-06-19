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
    
    let viewControllers: Array<UINavigationController>
    
    init(window: UIWindow, schedule: Schedule) {
        self.window = window
        self.tabBarController = UITabBarController()
        
        self.overviewCoordinator = OverviewCoordinator(presenter: overviewNavigationController, schedule: schedule)
        self.statsCoordinator = StatsCoordinator(presenter: statsNavigationViewController)
        self.tableCoordinator = TableCoordinator(presenter: tableNavigationController)
        self.viewControllers = [
            overviewNavigationController,
            statsNavigationViewController,
            tableNavigationController
        ]
        self.tabBarController.setViewControllers(viewControllers, animated: false)
        self.tabBarController.tabBar.tintColor = .white
        self.tabBarController.tabBar.barTintColor = .clear
    }

    func start() {
        self.window.rootViewController?.present(tabBarController, animated: true, completion: nil)
        self.overviewCoordinator.start()
        self.statsCoordinator.start()
        self.tableCoordinator.start()
    }
    
//    func startFlow() {
//        currentCoordinator?.start
//    }
    
}
