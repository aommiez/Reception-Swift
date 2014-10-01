//
//  MasterViewController.swift
//  Reception
//
//  Created by issrapong wongyai on 9/17/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import UIKit

protocol masterDelegate {
    func moveToView(view: String)
}


class MasterViewController: UIViewController,masterDelegate {
    

    @IBOutlet var navController: UINavigationController!
    var delegate: masterDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navController.view.frame = CGRectMake(0, 0, 320, 768)
        self.view.addSubview(self.navController.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testTapped(sender: AnyObject) {
        self.delegate?.moveToView("checkin");
    }

    @IBAction func checkOutTapped(sender: AnyObject) {
        self.delegate?.moveToView("checkout");
    }
    
    func moveToView(view: String) {
        NSLog("No Delegate")
    }

}
