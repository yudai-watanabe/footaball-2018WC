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
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    private var matches: Array<ListDiffable> = []
    private var todaysMatches: Array<ListDiffable> = []
    
    weak var delegate: ScheduleViewControllerDelegate?
    
    private lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = self.collectionView
        adapter.dataSource = self
        
        MatchesRepository().get{[weak self] (matches: Array<Match>?) in
            let sch = self?.converter(matches: matches)
            self?.matches = sch!
        }
        
        TodaysMatchesRepository().get{[weak self] (matches: Array<Match>?) in
            let sch = self?.converter(matches: matches)
            self?.todaysMatches = sch!
            self?.adapter.reloadData(completion: nil)
        }
    }
    
    private func converter(matches: Array<Match>?) -> Array<Schedule> {
        guard let matches = matches else {
            fatalError()
        }
        let schedules = matches.map {
            Schedule(id: $0.fifaId, date:  $0.datetime, stadium: $0.location, location: $0.venue,
                     home: $0.homeTeam, away: $0.awayTeam)
        }
        return schedules
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
    
    @IBAction func changedValue(_ sender: Any) {
        self.adapter.reloadData(completion: nil)
    }
}

enum ScheduleSegment: Int {
    case todays
    case all
}

extension ScheduleViewController: ListAdapterDataSource {

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        if let segment = ScheduleSegment(rawValue: self.segmentedControl.selectedSegmentIndex) {
            switch segment {
            case .todays:  return todaysMatches
            case .all: return matches
            }
        }

        return []
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
