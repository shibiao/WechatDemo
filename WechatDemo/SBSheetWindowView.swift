//
//  SBSheetWindowView.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/12.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class SBSheetWindowView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    @IBAction func cancel(_ sender: NSButton) {
        NSApp.mainWindow?.endSheet(self.window!)
    }
    
}
