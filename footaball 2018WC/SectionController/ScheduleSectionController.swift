//
//  ScheduleSectionController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/13.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import IGListKit
import UIKit

protocol ScheduleSectionControllerDelegate: NSObjectProtocol {
    func scheduleSectionController(section: ScheduleSectionController, tapped schedule: Schedule)
}

class ScheduleSectionController: ListSectionController {
    
    override init() {
        super.init()
        self.inset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    var delegate: ScheduleSectionControllerDelegate?
    
    private var schedule: Schedule?
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width,
                      height: 92)
    }
    
    override func didUpdate(to object: Any) {
        self.schedule = object as? Schedule
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "ScheduleCollectionViewCell",
                                                                bundle: nil,
                                                                for: self, at: index) as? ScheduleCollectionViewCell else {
            fatalError()
        }
        cell.schedule = schedule
        return cell
        
    }
    
    override func didSelectItem(at index: Int) {
        if let schedule = self.schedule {
            delegate?.scheduleSectionController(section: self, tapped: schedule)
        }
    }
    
}
