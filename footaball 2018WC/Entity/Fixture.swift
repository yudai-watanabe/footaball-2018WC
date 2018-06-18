//
//  Schedule.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import IGListKit

struct Sched: Entity {
    
    let count: Int
    let fixtures: Schedule
    
    enum CodingKeys: String, CodingKey {
        case count
        case fixtures
    }
    
}

class Schedule: Entity {

    let date: String
    let homeTeamName: String
    let awayTeamName: String
    let goalsResult: GoalsResult

    init(date: String, homeTeamName: String, awayTeamName: String, goalsResult: GoalsResult) {
        self.date = date
        self.homeTeamName = homeTeamName
        self.awayTeamName = awayTeamName
        self.goalsResult = goalsResult
    }

}

struct GoalsResult: Entity {

    let goalsHomeTeam: Int
    let goalsAwayTeam: Int

}

extension Schedule: ListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return date as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let objectSchedule = object as? Schedule else {
            fatalError()
        }
        return self.date == objectSchedule.date
    }

}
