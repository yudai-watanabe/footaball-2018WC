//
//  OverviewViewController.swift
//  footaball 2018WC
//
//  Created by watanabe-yudai on 2018/06/18.
//  Copyright © 2018年 watanabe-yudai. All rights reserved.
//

import UIKit
import MapKit

protocol OverviewViewControllerDelegate: class {
    func overviewViewControllerClosedButtonClicked(_ viewController: OverviewViewController)
}

class OverviewViewController: UIViewController {
    
    private typealias Pin = MKPointAnnotation
    
    private var pin: Pin = Pin()
    
    public var schedule: Schedule?
    
    weak var delegate: OverviewViewControllerDelegate?
    
    @IBOutlet weak var homeTeamCrestLabel: UILabel!
    @IBOutlet weak var awayTeamCrestLabel: UILabel!
    @IBOutlet weak var homeTeamGoalLabel: UILabel!
    @IBOutlet weak var awayTeamGoalLabel: UILabel!
    @IBOutlet weak var homeTeamNameLabel: UILabel!
    @IBOutlet weak var awayTeamNameLabel: UILabel!
    @IBOutlet weak var stadiumLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        guard let schedule = schedule else {
            fatalError()
        }
        let request: MKLocalSearchRequest = MKLocalSearchRequest()
        request.naturalLanguageQuery = schedule.stadium
        let search: MKLocalSearch = MKLocalSearch(request: request)
        search.start {(res, error) in
            if error != nil {
                fatalError()
            } else {
                guard let res = res else {
                    fatalError()
                }
                let center = res.mapItems[0].placemark.coordinate
                let span = MKCoordinateSpanMake(0.05, 0.05)
                let region = MKCoordinateRegionMake(center, span)
                self.mapView.setRegion(region, animated: true)
                
                self.pin.coordinate = center
                self.pin.title = schedule.stadium
                //if let pin = self.pin {
                self.mapView.addAnnotation(self.pin)
                //}
            }
        }
        
        self.homeTeamCrestLabel.text = schedule.homeTeamCrest
        self.awayTeamCrestLabel.text = schedule.awayTeamCrest
        self.homeTeamNameLabel.text = schedule.homeTeam.code
        self.awayTeamNameLabel.text = schedule.awayTeam.code
        self.homeTeamGoalLabel.text = schedule.homeTeam.goals?.description
        self.awayTeamGoalLabel.text = schedule.awayTeam.goals?.description
        self.stadiumLabel.text = schedule.stadium
        self.locationLabel.text = schedule.location
        self.startDateLabel.text = schedule.date

    }
    
    @IBAction func tappedCloseButton(_ sender: Any) {
        self.delegate?.overviewViewControllerClosedButtonClicked(self)
    }
}

extension OverviewViewController: MKMapViewDelegate {
//    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        let pin = MKAnnotationView(annotation: self.pin, reuseIdentifier: "stadiumPin")
//        pin.image = #imageLiteral(resourceName: "ico_stadium")
//        let transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        pin.transform = transform
//        return pin
//        
//    }
    
}
