//
//  LeftSideController.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/3.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class LeftSideController: NSViewController {
    var mainSplitVC: MainSplitViewController!
    var splitViewItem = NSSplitViewItem()
    var vc: ChatSplitViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor(red:0.15, green:0.15, blue:0.15, alpha:1.00).cgColor
        mainSplitVC = NSStoryboard.init(name: "Main", bundle: nil).instantiateController(withIdentifier: "mainSplit") as! MainSplitViewController
        vc = NSStoryboard.init(name: "Chat", bundle: nil).instantiateInitialController() as! ChatSplitViewController
    }
    @IBAction func handleChat(_ sender: Any) {

        splitViewItem.viewController = vc
        mainSplitVC.addSplitViewItem(splitViewItem)
        
    }
    @IBAction func handleContact(_ sender: Any) {
        print(mainSplitVC)
        let contactVC = NSStoryboard.init(name: "Contact", bundle: nil).instantiateInitialController() as! ContactSplitViewController
//        splitViewItem = mainSplitVC.splitViewItem(for: vc)!
//        mainSplitVC.removeSplitViewItem(splitViewItem)
        mainSplitVC.view.removeFromSuperview()
        let rightSplitVC = NSSplitViewItem(contentListWithViewController: contactVC)
        mainSplitVC.addSplitViewItem(rightSplitVC)
    }
    @IBAction func handleFavorite(_ sender: Any) {
        
    }

    
}
