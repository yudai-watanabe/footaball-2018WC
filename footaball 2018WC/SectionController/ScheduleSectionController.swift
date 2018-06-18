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

class ScheduleSectionController: ListSectionController {
    
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
    
}
