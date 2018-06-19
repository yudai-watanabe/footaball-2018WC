//
//  TableCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

class TableCoordinator: Coordinator {
    
    let presenter: UINavigationController
    
    private let tableViewController: TableViewController
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        self.tableViewController = TableViewController.instantiateFromStoryBoard() as! TableViewController
        self.tableViewController.title = "Table"
        self.tableViewController.tabBarItem.image = #imageLiteral(resourceName: "tab_table")
    }
    
    func start() {
        presenter.pushViewController(tableViewController, animated: false)
    }
    
}
