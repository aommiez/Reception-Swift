//
//  ReceptionManager.swift
//  Reception
//
//  Created by issrapong wongyai on 10/1/2557 BE.
//  Copyright (c) 2557 platwo fusion. All rights reserved.
//

import Foundation

protocol managerDelegate {
    
}


var manager = AFHTTPRequestOperationManager()
var delegate: managerDelegate?


class Manager: NSObject,managerDelegate {
    
}