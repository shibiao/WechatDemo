//
//  WindowController.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/3.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController,NSWindowDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()
        //reopen closed window
        let appDelegate = NSApp.delegate as! AppDelegate
        appDelegate.mainWindowController = self
        //setup titlebar
        window?.titlebarAppearsTransparent = true
        window?.titleVisibility = .hidden
        window?.styleMask = [.fullSizeContentView,.titled,.resizable,.miniaturizable,.closable]
        //setup sheet position
        window?.delegate = self
        window?.isMovableByWindowBackground = true
    }
    //setup sheet position
    func window(_ window: NSWindow, willPositionSheet sheet: NSWindow, using rect: NSRect) -> NSRect {
        let width = window.frame.size.width
        let height = window.frame.size.height
        print(NSStringFromRect(window.frame))
        print(NSStringFromRect(sheet.frame))
        return NSMakeRect(width/2-sheet.frame.width/2, height+sheet.frame.size.height/2-45, sheet.frame.size.width, sheet.frame.size.height)
    }
}
