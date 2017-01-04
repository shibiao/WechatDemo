//
//  RightViewController.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/3.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class RightViewController: NSViewController {
    var data = NSMutableArray()
    @IBOutlet weak var collectionView: NSCollectionView!

    @IBOutlet var sendMessageTextView: NSTextView!
    
    @IBOutlet weak var topBackgroundView: NSView!
    
    @IBOutlet weak var toolBackgroundView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        //顶部视图设置
        topBackgroundView.wantsLayer = true
        topBackgroundView.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        //NSCollectionView的设置
        let flowLayout = NSCollectionViewFlowLayout()
        flowLayout.headerReferenceSize = NSMakeSize(self.view.bounds.size.width, 50)
        collectionView.collectionViewLayout = flowLayout
        collectionView.backgroundView?.wantsLayer = true
        collectionView.wantsLayer = true
        collectionView.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        collectionView.backgroundView?.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        //工具视图的设置
        toolBackgroundView.wantsLayer = true
        toolBackgroundView.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        //发送信息TextView的设置
        sendMessageTextView.wantsLayer = true
        sendMessageTextView.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00)
        
        
    }
   
}
extension RightViewController: NSCollectionViewDelegate,NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        return NSCollectionViewItem()
    }
}

