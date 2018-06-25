//
//  TodaysMatchesRepository.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/25.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation

class TodaysMatchesRepository: Repository {
    
    var url: String
    
    init() {
        url = "https://worldcup.sfg.io/matches/today"
    }
}
