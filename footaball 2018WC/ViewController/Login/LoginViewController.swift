//
//  LoginViewController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/22.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: class {
    func loginViewControllerDidTappedButton(_ viewController: LoginViewController)
}

class LoginViewController: UIViewController {
   
    weak var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)        
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        delegate?.loginViewControllerDidTappedButton(self)
    }
    

}
