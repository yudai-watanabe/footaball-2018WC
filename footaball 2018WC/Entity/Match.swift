//
//  Match.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/21.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation

struct Match: Entity {
    
    let fifaId: String
    let venue: String
    let location: String
    let status: String
    let datetime: String
    let homeTeamStatistics: Statistics?
    let awayTeamStatistics: Statistics?
    let homeTeam: Country
    let awayTeam: Country
    
    enum CodingKeys: String, CodingKey {
        case fifaId = "fifa_id"
        case venue
        case location
        case status
        case datetime
        case homeTeamStatistics = "home_team_statistics"
        case awayTeamStatistics = "away_team_statistics"
        case homeTeam = "home_team"
        case awayTeam = "away_team"
    }
    
}

struct Country: Entity {
    
    let country: String
    let code: String
    let goals: Int?
    
    enum CodingKeys: String, CodingKey {
        case country
        case code
        case goals
    }
}
