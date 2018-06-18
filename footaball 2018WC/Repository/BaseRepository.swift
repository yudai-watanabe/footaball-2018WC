//
//  BaseRepository.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/14.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import Alamofire

protocol Repository {
    
    var url: String { get }
    func get<T: Codable>(complation: ((T?)->Void)?)
    
}

extension Repository {
    
    func get<T: Codable>(complation: ((T?)->Void)?) {
        Alamofire.request(self.url).responseJSON(completionHandler: {res in
            switch res.result {
            case .success(let json):
                do {
                    let data = try JSONSerialization.data(withJSONObject: json, options: [])
                    let entity = try JSONDecoder().decode(T.self, from: data)
                    complation?(entity)
                }
                catch {
                    print(error.localizedDescription)
                    complation?(nil)
                }
            case .failure(let error):
                print(error.localizedDescription)
                complation?(nil)
            }
        })
    }
    
}
