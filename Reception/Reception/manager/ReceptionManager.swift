//
//  ReceptionManager.swift
//  Reception
//
//  Created by issrapong wongyai on 10/1/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import Foundation

@objc protocol apiManagerDelegate:NSObjectProtocol {
    optional func LoginWithUserPassRespond(jsonResult: NSDictionary)
    optional func LoginWithUserPassRespondFailure(msgError: String)
}

class ApiManager: NSObject,apiManagerDelegate {
    
    var userDefaults: NSUserDefaults?
    var manager = AFHTTPRequestOperationManager()
    var delegate: apiManagerDelegate?
    var strUrl:String = "";
    
    override init() {
        NSLog("init manager")
        self.userDefaults = NSUserDefaults()
        self.manager = AFHTTPRequestOperationManager()
    }
    
    func loginWithUserPass ( user: String, pass: String) {
        self.strUrl = NSString(format: "%@oauth/password", API_URL)
        var parameters = ["username":user,"password":pass]
        self.manager.POST( self.strUrl,parameters: parameters,
        success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
            self.delegate?.LoginWithUserPassRespond!(responseObject as NSDictionary)
            println("Login With User Pass ")
        },
        failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
            self.delegate?.LoginWithUserPassRespondFailure!(error.localizedDescription)
            println("Error: " + error.localizedDescription)
        })
    }
}