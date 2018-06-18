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
    
    let presenter: UITabBarController
    
    let overviewNavigationController = UINavigationController()
    let statsNavigationViewController = UINavigationController()
    let tableNavigationController = UINavigationController()
    
    let overviewCoordinator: OverviewCoordinator
    let statsCoordinator: StatsCoordinator
    let tableCoordinator: TableCoordinator
    
    init(presenter: UITabBarController) {
        self.presenter = presenter
        self.overviewCoordinator = OverviewCoordinator(presenter: overviewNavigationController)
        self.statsCoordinator = StatsCoordinator(presenter: statsNavigationViewController)
        self.tableCoordinator = TableCoordinator(presenter: tableNavigationController)
        let viewControllers: Array<UINavigationController> = [overviewNavigationController,
                                                              statsNavigationViewController,
                                                              tableNavigationController]

        self.presenter.setViewControllers(viewControllers, animated: false)
        self.presenter.tabBar.tintColor = .black
    }
    
    func start() {
        print("a")
    }
    
}
