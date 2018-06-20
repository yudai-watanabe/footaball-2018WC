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
            self.homeTeamName.text = schedule.homeTeamName
            self.awayTeamName.text = schedule.awayTeamName
            if let crest = Team(rawValue: schedule.homeTeamName)?.getCrest() {
                self.homeTeamCrest.text = crest
            }
            if let crest = Team(rawValue: schedule.awayTeamName)?.getCrest() {
                self.awayTeamCrest.text = crest
            }
            
        }
    }
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var homeTeamName: UILabel!
    @IBOutlet weak var awayTeamName: UILabel!
    @IBOutlet weak var homeTeamCrest: UILabel!
    @IBOutlet weak var awayTeamCrest: UILabel!
}
