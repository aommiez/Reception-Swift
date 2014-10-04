//
//  LangManager.swift
//  Reception
//
//  Created by issrapong wongyai on 10/4/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import Foundation


class LangManager: NSObject {
    
    var userDefaults: NSUserDefaults?
    var langData: JSON
    var langInfo: JSON
    override init() {
        self.userDefaults = NSUserDefaults();
        var path = NSBundle.mainBundle().pathForResource(self.userDefaults?.objectForKey("lang") as AnyObject? as? String, ofType: "json" )
        var possibleContent = String.stringWithContentsOfFile(path!, encoding: NSUTF8StringEncoding, error: nil)
        self.langData = JSON(string:possibleContent!)["data"]
        self.langInfo = JSON(string:possibleContent!)["info"]
    }
    
    func getTextFromKey (textKey: String)-> String {
        var out:String = self.langData[textKey].asString!
        return out
    }
    
    func getTextFromKeyAndLang (textKey: String , Lang: String = "en" )-> String {
        var path = NSBundle.mainBundle().pathForResource( Lang , ofType: "json" )
        var possibleContent = String.stringWithContentsOfFile(path!, encoding: NSUTF8StringEncoding, error: nil)
        var out:String = self.langData[textKey].asString!
        return out
    }
    
}