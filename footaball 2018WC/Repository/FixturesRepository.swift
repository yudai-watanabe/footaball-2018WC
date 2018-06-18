//
//  FixturesRepository.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/14.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import Alamofire

struct FixturesRepository: Repository {
    
    let url: String
    
    init() {
        self.url = "http://api.football-data.org/v1/competitions/467/fixtures"
    }
}
