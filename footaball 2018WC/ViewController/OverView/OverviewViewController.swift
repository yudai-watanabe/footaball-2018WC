//
//  OverviewViewController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/18.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit

protocol OverviewViewControllerDelegate: class {
    func overviewViewControllerClosedButtonClicked(_ viewController: OverviewViewController)
}

class OverviewViewController: UIViewController {
    
    public var schedule: Schedule?
    
    weak var delegate: OverviewViewControllerDelegate?
    
    @IBOutlet weak var homeTeamCrestLabel: UILabel!
    @IBOutlet weak var awayTeamCrestLabel: UILabel!
    @IBOutlet weak var homeTeamGoalLabel: UILabel!
    @IBOutlet weak var awayTeamGoalLabel: UILabel!
    @IBOutlet weak var homeTeamNameLabel: UILabel!
    @IBOutlet weak var awayTeamNameLabel: UILabel!
    @IBOutlet weak var stadiumLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        guard let schedule = schedule else {
            fatalError()
        }
        
        self.homeTeamCrestLabel.text = schedule.homeTeamCrest
        self.awayTeamCrestLabel.text = schedule.awayTeamCrest
        self.homeTeamNameLabel.text = schedule.homeTeam.code
        self.awayTeamNameLabel.text = schedule.awayTeam.code
        self.homeTeamGoalLabel.text = schedule.homeTeam.goals?.description
        self.awayTeamGoalLabel.text = schedule.awayTeam.goals?.description
        self.stadiumLabel.text = schedule.stadium
        self.locationLabel.text = schedule.location
    }
    
    @IBAction func tappedCloseButton(_ sender: Any) {
        self.delegate?.overviewViewControllerClosedButtonClicked(self)
    }
}
