//
//  loginViewController.swift
//  Reception
//
//  Created by issrapong wongyai on 10/4/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import UIKit

protocol loginDelegate {
    func loginSuccess();
}

class loginViewController: UIViewController,loginDelegate {

    var delegate: loginDelegate?
    var userDefaults: NSUserDefaults?
    var langManager: LangManager?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userDefaults = NSUserDefaults();
        self.langManager = LangManager();
        println(self.langManager?.getTextFromKey("LOGIN_VIEW_LOGIN_BUTTON"))
    }

    func loginSuccess () {
         
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        self.delegate?.loginSuccess();
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
