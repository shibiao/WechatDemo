//
//  SendMessageTextView.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/4.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class SendMessageTextView: NSTextView, NSTextViewDelegate {

    override func awakeFromNib() {
        
        self.delegate = self
    }
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        
    }
    override func keyDown(with event: NSEvent) {
        self.print("000")
    }
    
}
