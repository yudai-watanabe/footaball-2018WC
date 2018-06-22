//
//  LoginCoordinator.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/22.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    let loginViewController: LoginViewController
    
    let window: UIWindow
    
    init(window: UIWindow) {
        guard let loginVC = LoginViewController.instantiateFromStoryBoard() as? LoginViewController else {
            fatalError("cant make loginVC")
        }
        self.window = window
        self.loginViewController = loginVC
        self.loginViewController.modalPresentationStyle = .overCurrentContext
        self.loginViewController.delegate = self
    }
    
    func start() {
        self.window.rootViewController?.present(self.loginViewController, animated: true, completion: nil)
    }
    
}

extension LoginCoordinator: LoginViewControllerDelegate {
    func loginViewControllerDidTappedButton(_ viewController: LoginViewController) {
        self.loginViewController.dismiss(animated: true, completion: nil)
    }
    
    
}
