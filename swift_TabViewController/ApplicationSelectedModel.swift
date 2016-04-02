//
//  ApplicationSelectedModel.swift
//  swift_TabViewController
//
//  Created by Hussain  on 21/2/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa
//Model Constant here
let kappName1 = "CrickBuzz"
let kappVersion1 = "10.11"
let kappInfo1 = "This is Cricket application"

let kappName2 = "Genie"
let kappVersion2 = "11.11"
let kappInfo2 = "This is Netgear application"


class ApplicationSelectedModel: NSObject {
    var modelArray1 = [AnyObject]()
    var modelArray2 = [AnyObject]()
    override init(){
        let model1 = ApplicationModel(appName: kappName1, appVersion: kappVersion1, appInfo: kappInfo1)
        modelArray1.append(model1)
        let model2 = ApplicationModel(appName: kappName2, appVersion: kappVersion2, appInfo: kappInfo2)
        modelArray2.append(model2)
    }
}
