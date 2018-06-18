//
//  ApplicationCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    func start()
}

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    let rootViewController: UINavigationController = UINavigationController()
    
    let detailTabBarController = UITabBarController()
    let infoNavigationController = UINavigationController()
    
    let detailTabCoordinator: DetailTabCoordinator
    let infoCoordinator: InfoCoordinator
    let overViewCoordinator: OverviewCoordinator
    
    init(window: UIWindow) {
        guard let scheduleViewController = ScheduleViewController.instantiateFromStoryBoard() as? ScheduleViewController else {
            fatalError("cant make scheduleVC")
        }
        self.window = window
        self.detailTabCoordinator = DetailTabCoordinator(presenter: detailTabBarController)
        self.infoCoordinator = InfoCoordinator(presenter: rootViewController)
        self.overViewCoordinator = OverviewCoordinator(presenter: rootViewController)
        scheduleViewController.delegate = self
        self.rootViewController.pushViewController(scheduleViewController, animated: false)
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
}

extension ApplicationCoordinator: ScheduleViewControllerDelegate {
    func scheduleViewController(_ viewController: ScheduleViewController, tapped schedule: Schedule) {
        self.overViewCoordinator.start()
    }
    
    func scheduleViewController(_ viewController: ScheduleViewController, tapped infoButton: UIButton) {
        self.infoCoordinator.start()
    }
    
}
