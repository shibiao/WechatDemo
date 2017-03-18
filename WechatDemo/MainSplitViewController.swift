//
//  MainSplitViewController.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/3/18.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class MainSplitViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.insertSplitViewItem(<#T##splitViewItem: NSSplitViewItem##NSSplitViewItem#>, at: <#T##Int#>)
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        let vc = self.splitViewItems[0].viewController
        
        print(NSStringFromRect(vc.view.frame))
    }
}
