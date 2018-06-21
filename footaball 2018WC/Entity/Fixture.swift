//
//  Schedule.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import IGListKit

struct Fixture: Entity {
    
    let date: String
    let homeTeamName: String
    let awayTeamName: String
    let goalsResult: GoalsResult
    
    enum CodingKeys: String, CodingKey {
        case date
        case homeTeamName
        case awayTeamName
        case goalsResult = "result"
    }
}

struct GoalsResult: Entity {
    
    let goalsHomeTeam: Int?
    let goalsAwayTeam: Int?
    
    enum CodingKeys: String, CodingKey {
        case goalsHomeTeam
        case goalsAwayTeam
    }
    
}

class Schedule: Entity {

    let date: String
    let stadium: String
    let location: String
    let homeTeam: Country
    let awayTeam: Country
    let homeTeamCrest: String?
    let awayTeamCrest: String?

    init(date: String, stadium: String, location: String, home: Country, away: Country) {
        self.date = date
        self.stadium = stadium
        self.location = location
        self.homeTeam = home
        self.awayTeam = away
        self.homeTeamCrest = Team(rawValue: home.country.replacingOccurrences(of: " ", with: ""))?.getCrest()
        self.awayTeamCrest = Team(rawValue: away.country.replacingOccurrences(of: " ", with: ""))?.getCrest()
    }

}

extension Schedule: ListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return date as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let objectSchedule = object as? Schedule else {
            fatalError()
        }
        return self.date == objectSchedule.date ||
            self.homeTeam.country == objectSchedule.homeTeam.country ||
            self.awayTeam.country == objectSchedule.awayTeam.country

    }

}
