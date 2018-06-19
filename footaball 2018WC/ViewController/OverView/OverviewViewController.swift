//
//  OverviewViewController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/18.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController {
    
    public var schedule: Schedule?
    
    @IBOutlet weak var homeTeamNameLabel: UILabel!
    @IBOutlet weak var awayTeamNameLabel: UILabel!
    @IBOutlet weak var homeTeamGoalLabel: UILabel!
    @IBOutlet weak var awayTeamGoalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        self.homeTeamNameLabel.text = schedule?.homeTeamName
        self.awayTeamNameLabel.text = schedule?.awayTeamName
        self.homeTeamGoalLabel.text = schedule?.goalsResult.goalsHomeTeam?.description
        self.awayTeamGoalLabel.text = schedule?.goalsResult.goalsAwayTeam?.description
    }
    
    @IBAction func selectedCloseButton(_ sender: Any) {
        self.tabBarController?.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
