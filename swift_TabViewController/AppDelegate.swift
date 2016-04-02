//
//  AppDelegate.swift
//  swift_TabViewController
//
//  Created by Hussain  on 21/2/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate,NSTabViewDelegate {
    @IBOutlet weak var tabbedView : NSTabView!
    var view : NSView!

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        loadViewControllerOnTabbedView(0)
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
    func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?){
        let tabViewItem = tabView.selectedTabViewItem
        let index = tabView.indexOfTabViewItem(tabViewItem!)
        loadViewControllerOnTabbedView(index)
    }

    func loadViewControllerOnTabbedView(index: Int)->Void{
        
        if (index==1)
        {
            let viewController = ViewController(nibName: kViewControllerName,bundle: nil)
            view = viewController!.view
        }
        else{
            let viewController = GenieViewController(nibName: kGenieViewController,bundle: nil)
            view = viewController!.view
        }
        self.tabbedView.subviews[0].addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let viewDictionary = [kViewConstraintKey : view]
        let verticalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|[view]|", options: [], metrics: nil, views: viewDictionary)
        self.tabbedView.subviews[0].addConstraints(verticalConstraint)
        let horizontalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:|[view]|", options: [], metrics: nil, views: viewDictionary)
        self.tabbedView.subviews[0].addConstraints(horizontalConstraint)
    }
}

