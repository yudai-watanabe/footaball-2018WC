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
    
    public func getCrest() -> String {
        switch self {
        case .Russia: return "🇷🇺"
        case .SaudiArabia: return "🇸🇦"
        case .Egypt: return "🇪🇬"
        case .Uruguay: return "🇺🇾"
        case .Morocco: return "🇲🇦"
        case .Iran: return "🇮🇷"
        case .Portugal: return "🇵🇹"
        case .Spain: return "🇪🇸"
        case .France: return "🇫🇷"
        case .Australia: return "🇦🇺"
        case .Peru: return "🇵🇪"
        case .Denmark: return "🇩🇰"
        case .Argentina: return "🇦🇷"
        case .Iceland: return "🇮🇸"
        case .Croatia: return "🇭🇷"
        case .Nigeria: return "🇳🇬"
        case .CostaRica: return "🇨🇷"
        case .Serbia: return "🇷🇸"
        case .Brazil: return "🇧🇷"
        case .Switzerland: return "🇨🇭"
        case .Germany: return "🇩🇪"
        case .Mexico: return "🇲🇽"
        case .Sweden: return "🇸🇪"
        case .KoreaRepublic: return "🇰🇷"
        case .Belgium: return "🇧🇪"
        case .Panama: return "🇵🇦"
        case .Tunisia: return "🇹🇳"
        case .England: return "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
        case .Poland: return "🇵🇱"
        case .Senegal: return "🇸🇳"
        case .Colombia: return "🇨🇴"
        case .Japan: return "🇯🇵"
        }
    }
}
