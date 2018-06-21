//
//  ScheduleCollectionViewCell.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import SwiftSVG

class ScheduleCollectionViewCell: UICollectionViewCell {

    var schedule: Schedule? {
        didSet{
            guard let schedule = schedule else {
                fatalError()
            }
            self.date.text = schedule.date.description
            self.homeTeamName.text = schedule.homeTeam.country
            self.awayTeamName.text = schedule.awayTeam.country
            self.homeTeamCrest.text = schedule.homeTeamCrest
            self.awayTeamCrest.text = schedule.awayTeamCrest
        }
    }
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var homeTeamName: UILabel!
    @IBOutlet weak var awayTeamName: UILabel!
    @IBOutlet weak var homeTeamCrest: UILabel!
    @IBOutlet weak var awayTeamCrest: UILabel!
}
