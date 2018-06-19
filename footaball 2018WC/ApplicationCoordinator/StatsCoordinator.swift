//
//  StatsCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

class StatsCoordinator: Coordinator {
    
    let presenter: UINavigationController
    
    private let statsViewController: StatsViewController
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        self.statsViewController = StatsViewController.instantiateFromStoryBoard() as! StatsViewController
        self.statsViewController.title = "Stats"
        self.statsViewController.tabBarItem.image = #imageLiteral(resourceName: "tab_stats")
    }
    
    func start() {
        presenter.pushViewController(statsViewController, animated: false)
    }
    
}
