//
//  SBSheetWindow.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/12.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class SBSheetWindow: NSWindow {
    override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: style, backing: bufferingType, defer: flag)
        setupUI()
    }
    func setupUI() {
        //获取nib视图
        var nibArray = NSArray()
        Bundle.main.loadNibNamed("SBSheetWindowView", owner: self, topLevelObjects: &nibArray)
        if let tmpView = nibArray[1] as? SBSheetWindowView {
            self.contentView = tmpView
        }else{
            setupUI()
        }
        
    }
}
