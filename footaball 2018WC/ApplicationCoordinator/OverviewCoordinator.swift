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
    
    public var closedAction: (() -> Void)?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        self.overviewViewController = OverviewViewController.instantiateFromStoryBoard() as! OverviewViewController
        self.overviewViewController.title = "Overview"
        self.overviewViewController.tabBarItem.image = #imageLiteral(resourceName: "tab_overView")
        self.overviewViewController.delegate = self
    }
    
    func start(schedule: Schedule) {
        self.overviewViewController.schedule = schedule
        presenter.pushViewController(overviewViewController, animated: true)
    }
    
    func start() {
        print("test")
    }
    
}

extension OverviewCoordinator: OverviewViewControllerDelegate {
    
    func overviewViewControllerClosedButtonClicked(_ viewController: OverviewViewController) {
        self.closedAction?()
    }
    
    
}
