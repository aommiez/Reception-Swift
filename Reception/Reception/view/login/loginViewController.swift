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

class loginViewController: UIViewController,loginDelegate,apiManagerDelegate {

    var delegate: loginDelegate?
    var userDefaults: NSUserDefaults?
    var langManager: LangManager?
    var apiManager: ApiManager?
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userDefaults = NSUserDefaults()
        self.langManager = LangManager()
        self.apiManager = ApiManager()
        self.apiManager?.delegate = self
        
        //println(self.langManager?.getTextFromKey("LOGIN_VIEW_LOGIN_BUTTON"))
    }

    func loginSuccess () {
        
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        self.apiManager?.loginWithUserPass(self.userTextField.text , pass: self.passTextField.text)
    }
    
    func LoginWithUserPassRespond(jsonResult: NSDictionary) {
        if ( jsonResult.objectForKey("error") == nil) {
            self.userDefaults?.setObject(jsonResult.objectForKey("access_token"), forKey: "access_token")
            self.userDefaults?.synchronize()
            self.delegate?.loginSuccess()
        } else {
            var alert = UIAlertView()
            alert.title = "Login Error"
            alert.message = jsonResult.objectForKey("error")!.objectForKey("message") as String!
            alert.addButtonWithTitle("Login agin")
            alert.show()
        }
    }
    
    func LoginWithUserPassRespondFailure(msgError: String) {
        var alert = UIAlertView()
        alert.title = "Login Error"
        alert.message = msgError
        alert.addButtonWithTitle("Login agin")
        alert.show()
        println(msgError)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
