//
//  CheckinViewController.swift
//  Reception
//
//  Created by issrapong wongyai on 9/17/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import UIKit

class CheckinViewController: UIViewController {

    @IBOutlet var navController: UINavigationController!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var checkInMainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navController.view.frame = CGRectMake(0, 0, 706, 768)
        self.scrollView.contentSize.height = self.checkInMainView.frame.height
        self.scrollView.contentSize.width = self.checkInMainView.frame.width
        self.scrollView.addSubview(self.checkInMainView)
        self.view.addSubview(self.navController.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
