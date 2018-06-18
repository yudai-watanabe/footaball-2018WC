//
//  InfoViewController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/13.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit

protocol InfoViewControllerDelegate: class {
    func infoViewController(_ viewController: InfoViewController, tapped infoButton: UIButton)
}

class InfoViewController: UIViewController {

    weak var delegate: InfoViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedBackButton(_ sender: Any) {
        if let backButton = sender as? UIButton {
            self.delegate?.infoViewController(self, tapped: backButton)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
