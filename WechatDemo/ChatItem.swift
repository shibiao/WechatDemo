//
//  ChatItem.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/3.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class ChatItem: NSCollectionViewItem {

    @IBOutlet weak var backgroundView: NSView!
    @IBOutlet weak var iconImage: NSImageView!
    @IBOutlet weak var nameLabel: NSTextField!
    @IBOutlet weak var shortMessage: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor(red:0.91, green:0.91, blue:0.91, alpha:1.00).cgColor
        
        backgroundView.wantsLayer = true
        backgroundView.layer?.backgroundColor = NSColor(red:0.96, green:0.96, blue:0.96, alpha:1.00).cgColor
    }
    override var isSelected: Bool{
        didSet {
            super.isSelected = isSelected
            updateColor()
        }
    }
    func updateColor() {
        if isSelected {
            switch highlightState {
            case .none, .forDeselection:
                backgroundView.layer?.backgroundColor = NSColor(red:0.96, green:0.96, blue:0.96, alpha:1.00).cgColor
            case .forSelection:
                backgroundView.layer?.backgroundColor = NSColor(red:0.86, green:0.86, blue:0.86, alpha:1.00).cgColor
            default:
                break
            }
        }else{
            backgroundView.layer?.backgroundColor = NSColor(red:0.96, green:0.96, blue:0.96, alpha:1.00).cgColor
        }
    }
}
