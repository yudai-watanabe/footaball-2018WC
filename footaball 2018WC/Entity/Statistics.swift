//
//  Statistics.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/20.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation

struct Statistics: Entity {
    
//    let attemptsOnGoal: Int
//    let onTarget: Int
//    let offTarget: Int
//    let blocked: Int
//    let woodwork: Int
//    let corners: Int
//    let offsides: Int
//    let ballPossession: Int
//    let passAccuracy: Int
//    let numPasses: Int
//    let passesCompleted: Int
//    let distanceCovered: Int
//    let ballsRecovered: Int
//    let tackles: Int
//    let clearances: Int
//    let yellowCards: Int
//    let redCards: Int
//    let foulsCommitted: Int
    let country: String
    
    enum CodingKeys: String, CodingKey {
//        case attemptsOnGoal = "attempts_on_goal"
//        case onTarget = "on_target"
//        case offTarget = "off_target"
//        case blocked
//        case woodwork
//        case corners
//        case offsides
//        case ballPossession = "ball_possession"
//        case passAccuracy = "pass_accuracy"
//        case numPasses = "num_passes"
//        case passesCompleted = "passes_completed"
//        case distanceCovered = "distance_covered"
//        case ballsRecovered = "balls_recovered"
//        case tackles
//        case clearances
//        case yellowCards = "yellow_cards"
//        case redCards = "red_cards"
//        case foulsCommitted = "fouls_committed"
        case country
    }
}
