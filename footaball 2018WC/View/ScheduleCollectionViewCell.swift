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
            self.date.text = schedule?.date.description
            self.homeTeamName.text = schedule?.homeTeamName
            self.awayTeamName.text = schedule?.awayTeamName
            if let homeTeamName = schedule?.homeTeamName.replacingOccurrences(of: " ", with: ""),
                let homeTeamCrestURL = Team(rawValue: homeTeamName)?.getCrestURL() {
//                let image = UIView(SVGURL: homeTeamCrestURL) {svgLayer in
//                    svgLayer.resizeToFit(self.homeTeamCrest.bounds)
//                    self.homeTeamCrest.layer.addSublayer(svgLayer)
//                }
//                 self.homeTeamCrest.addSubview(image)
            }
            
//            if let awayTeamName = schedule?.awayTeamName.replacingOccurrences(of: " ", with: ""),
//                let awayTeamCrestURL = Team(rawValue: awayTeamName)?.getCrestURL() {
//                //self.awayTeamCrest = UIImageView(SVGURL: awayTeamCrestURL)
//            }
            
        }
    }
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var homeTeamName: UILabel!
    @IBOutlet weak var awayTeamName: UILabel!
    @IBOutlet weak var homeTeamCrest: UIImageView!
    @IBOutlet weak var awayTeamCrest: UIImageView!
}
