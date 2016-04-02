//
//  ApplicationModel.swift
//  swift_TabViewController
//
//  Created by Hussain  on 21/2/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa

class ApplicationModel: NSObject {

    let appName: String
    let appVersion: String
    let appInfo: String
    
    init(appName: String,appVersion: String,appInfo: String){
        self.appName = appName
        self.appVersion = appVersion
        self.appInfo = appInfo
    }
    
}
