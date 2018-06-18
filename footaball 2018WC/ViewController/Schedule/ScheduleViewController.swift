//
//  ScheduleViewController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/12.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import Foundation
import UIKit
import IGListKit

protocol ScheduleViewControllerDelegate: class {
    
    func scheduleViewController(_ viewController: ScheduleViewController, tapped infoButton: UIButton)
    func scheduleViewController(_ viewController: ScheduleViewController, tapped schedule: Schedule)
    
}

class ScheduleViewController: UIViewController {
    
    var data: Array<ListDiffable> = [
        Schedule(date: "2018-06-14T15:00:00Z",
                 homeTeamName: "Russia",
                 awayTeamName: "Saudi Arabia",
                 goalsResult: GoalsResult.init(goalsHomeTeam: 0, goalsAwayTeam: 0))
    ]

    @IBOutlet weak var collectionView: UICollectionView!
    
    weak var delegate: ScheduleViewControllerDelegate?
    
    private lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = self.collectionView
        adapter.dataSource = self
        // Do any additional setup after loading the view.
        let closure: ((Sched?) -> Void)? = {[weak self] schedule in
            let a = schedule?.fixtures.map {
                Schedule(date: $0.date, homeTeamName: $0.homeTeamName, awayTeamName: $0.awayTeamName, goalsResult: $0.goalsResult)
            }
            self?.data = a!
            self?.adapter.reloadData(completion: nil)
        }
        
        FixturesRepository().get(complation: closure)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }

    @IBAction func tappedInfoButton(_ sender: Any) {
        if let infoButton = sender as? UIButton {
            delegate?.scheduleViewController(self, tapped: infoButton)
        }
    }
    
}

extension ScheduleViewController: ListAdapterDataSource {

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return data
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        switch object {
        case is Schedule:
            let scheduleSC = ScheduleSectionController()
            scheduleSC.delegate = self
            return scheduleSC
        default: fatalError()
        }
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }

}

extension ScheduleViewController: ScheduleSectionControllerDelegate {
    func scheduleSectionController(section: ScheduleSectionController, tapped schedule: Schedule) {
        delegate?.scheduleViewController(self, tapped: schedule)
    }

}
