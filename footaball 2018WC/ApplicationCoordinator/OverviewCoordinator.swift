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
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        self.overviewViewController = OverviewViewController.instantiateFromStoryBoard() as! OverviewViewController
    }
    
    func start() {
        presenter.pushViewController(overviewViewController, animated: true)
    }
    
}
