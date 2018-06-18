//
//  InfoCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

class InfoCoordinator: Coordinator {
    
    let presenter: UINavigationController
    
    private let infoViewController: InfoViewController
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        guard let infoViewController = InfoViewController.instantiateFromStoryBoard() as? InfoViewController else {
            fatalError("cant make InfoVC")
        }
        self.infoViewController = infoViewController
        self.infoViewController.delegate = self
        
    }
    
    func start() {
        presenter.pushViewController(infoViewController, animated: true)
    }
    
}

extension InfoCoordinator: InfoViewControllerDelegate {
    func infoViewController(_ viewController: InfoViewController, tapped infoButton: UIButton) {
        presenter.popViewController(animated: true)
    }
}
