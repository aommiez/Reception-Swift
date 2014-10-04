//
//  AppDelegate.swift
//  Reception
//
//  Created by issrapong wongyai on 9/17/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import UIKit

@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate,loginDelegate {

    var window: UIWindow?
    var main: MainViewController?
    var login: loginViewController?
    var userDefaults: NSUserDefaults?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        //NSLog("%@", NSStringFromCGRect(self.window!.frame))
        self.window?.backgroundColor = UIColor.whiteColor()
        self.userDefaults = NSUserDefaults()
        self.userDefaults!.setObject("en", forKey: "lang")
        self.userDefaults!.synchronize()
        self.main = MainViewController(nibName: "MainViewController", bundle: nil)
        self.login = loginViewController(nibName: "loginViewController", bundle: nil)
        self.login?.delegate = self;
        self.window!.rootViewController = self.login
        self.window!.makeKeyAndVisible()
        return true
    }
    
    func loginSuccess () {
        self.window!.rootViewController = self.main
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

