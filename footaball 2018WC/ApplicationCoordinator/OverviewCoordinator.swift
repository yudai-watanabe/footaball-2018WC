//
//  OverviewCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

class OverviewCoordinator: Coordinator {
    
    let presenter: UINavigationController
    
    private let overviewViewController: OverviewViewController
    
    init(presenter: UINavigationController, schedule: Schedule) {
        self.presenter = presenter
        self.overviewViewController = OverviewViewController.instantiateFromStoryBoard() as! OverviewViewController
        self.overviewViewController.title = "Overview"
        self.overviewViewController.tabBarItem.image = #imageLiteral(resourceName: "tab_overView")
        self.overviewViewController.schedule = schedule
    }
    
    func start() {
        presenter.pushViewController(overviewViewController, animated: false)
    }
    
}
