//
//  MainViewController.swift
//  Reception
//
//  Created by issrapong wongyai on 9/20/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import UIKit

protocol mainDelegate {
    
}

class MainViewController: UIViewController,mainDelegate,masterDelegate {

    //var master: MasterViewController?
    var master: MasterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
    var detail: DetailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
    var checkInView: CheckinViewController = CheckinViewController(nibName: "CheckinViewController", bundle: nil)
    var checkOutView: CheckOutViewController = CheckOutViewController(nibName: "CheckOutViewController", bundle: nil)
    var reservationView: ReservationViewController = ReservationViewController(nibName: "ReservationViewController", bundle: nil)
    var historyView: HistoryViewController = HistoryViewController(nibName: "HistoryViewController", bundle: nil)
    var userDefaults: NSUserDefaults?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userDefaults = NSUserDefaults()
        self.master.delegate = self;
        self.master.view.frame = CGRectMake(-1, 0, self.master.view.frame.width, self.master.view.frame.height)
        var detailFrame = CGRectMake(320, 0, self.detail.view.frame.width, self.detail.view.frame.height)
        self.checkInView.view.frame = detailFrame
        self.checkOutView.view.frame = detailFrame
        self.reservationView.view.frame = detailFrame
        self.historyView.view.frame = detailFrame
        self.view.addSubview(self.master.view)
        self.view.addSubview(self.reservationView.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func moveToView(view: String) {
        switch (view) {
        case "history":
            self.removeAllView()
            self.view.addSubview(self.historyView.view)
            NSLog("history")
        case "reservation":
            self.removeAllView()
            self.view.addSubview(self.reservationView.view)
            NSLog("reservation")
        case "checkin":
            self.removeAllView()
            self.view.addSubview(self.checkInView.view)
            NSLog("check in")
        case "checkout":
            self.removeAllView()
            self.view.addSubview(self.checkOutView.view)
            NSLog("check out")
        default:
            NSLog("no view controller");
        }
    }
    
    func removeAllView () {
        self.checkOutView.view.removeFromSuperview()
        self.checkInView.view.removeFromSuperview()
    }

}
