//
//  Team.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/14.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation

enum Team: String {
    case Russia
    case SaudiArabia
    case Egypt
    case Uruguay
    case Morocco
    case Iran
    case Portugal
    case Spain
    case France
    case Australia
    case Peru
    case Denmark
    case Argentina
    case Iceland
    case Croatia
    case Nigeria
    case CostaRica
    case Serbia
    case Brazil
    case Switzerland
    case Germany
    case Mexico
    case Sweden
    case KoreaRepublic
    case Belgium
    case Panama
    case Tunisia
    case England
    case Poland
    case Senegal
    case Colombia
    case Japan
    
    public func getCrestURL() -> URL? {
        return URL(string: self.getCrestURLString())
    }
    
    private func getCrestURLString() -> String {
        switch self {
        case .Russia: return "https://upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Russia.svg"
        case .SaudiArabia: return "https://upload.wikimedia.org/wikipedia/commons/0/0d/Flag_of_Saudi_Arabia.svg"
        case .Egypt: return "https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg"
        case .Uruguay: return "https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Uruguay.svg"
        case .Morocco: return "https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Morocco.svg"
        case .Iran: return "https://upload.wikimedia.org/wikipedia/commons/c/ca/Flag_of_Iran.svg"
        case .Portugal: return "https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Portugal.svg"
        case .Spain: return "https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Spain.svg"
        case .France: return "https://upload.wikimedia.org/wikipedia/commons/c/c3/Flag_of_France.svg"
        case .Australia: return "https://upload.wikimedia.org/wikipedia/commons/b/b9/Flag_of_Australia.svg"
        case .Peru: return "https://upload.wikimedia.org/wikipedia/commons/c/cf/Flag_of_Peru.svg"
        case .Denmark: return "https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Denmark.svg"
        case .Argentina: return "https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg"
        case .Iceland: return "https://upload.wikimedia.org/wikipedia/commons/c/ce/Flag_of_Iceland.svg"
        case .Croatia: return "https://upload.wikimedia.org/wikipedia/commons/1/1b/Flag_of_Croatia.svg"
        case .Nigeria: return "https://upload.wikimedia.org/wikipedia/commons/7/79/Flag_of_Nigeria.svg"
        case .CostaRica: return "https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Costa_Rica_%28state%29.svg"
        case .Serbia: return "https://upload.wikimedia.org/wikipedia/commons/f/ff/Flag_of_Serbia.svg"
        case .Brazil: return "https://upload.wikimedia.org/wikipedia/commons/0/05/Flag_of_Brazil.svg"
        case .Switzerland: return "https://upload.wikimedia.org/wikipedia/commons/0/08/Flag_of_Switzerland_%28Pantone%29.svg"
        case .Germany: return "https://upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Germany.svg"
        case .Mexico: return "https://upload.wikimedia.org/wikipedia/commons/f/fc/Flag_of_Mexico.svg"
        case .Sweden: return "https://upload.wikimedia.org/wikipedia/commons/4/4c/Flag_of_Sweden.svg"
        case .KoreaRepublic: return "https://upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_South_Korea.svg"
        case .Belgium: return "https://upload.wikimedia.org/wikipedia/commons/9/92/Flag_of_Belgium_%28civil%29.svg"
        case .Panama: return "https://upload.wikimedia.org/wikipedia/commons/a/ab/Flag_of_Panama.svg"
        case .Tunisia: return "https://upload.wikimedia.org/wikipedia/commons/c/ce/Flag_of_Tunisia.svg"
        case .England: return "https://upload.wikimedia.org/wikipedia/commons/b/be/Flag_of_England.svg"
        case .Poland: return "https://upload.wikimedia.org/wikipedia/commons/1/12/Flag_of_Poland.svg"
        case .Senegal: return "https://upload.wikimedia.org/wikipedia/commons/f/fd/Flag_of_Senegal.svg"
        case .Colombia: return "https://upload.wikimedia.org/wikipedia/commons/2/21/Flag_of_Colombia.svg"
        case .Japan: return "https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg"
        }
    }
}
