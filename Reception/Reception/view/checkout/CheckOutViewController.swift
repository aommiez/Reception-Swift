//
//  CheckOutViewController.swift
//  Reception
//
//  Created by issrapong wongyai on 9/17/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet var navController: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navController.view.frame = CGRectMake(0, 0, 706, 768)
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
