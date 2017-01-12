//
//  CenterViewController.swift
//  WechatDemo
//
//  Created by sycf_ios on 2017/1/3.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class CenterViewController: NSViewController,NSCollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: NSCollectionView!

    @IBAction func add(_ sender: NSButton) {
       
        let sheetWindow = SBSheetWindow(contentRect: NSMakeRect(0, 0, 600, 450), styleMask: [.texturedBackground], backing: .nonretained, defer: true)
        
            view.window?.beginSheet(sheetWindow, completionHandler: nil)
           
   
    }
    let grayColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = grayColor.cgColor
        collectionView.wantsLayer = true
        collectionView.layer?.backgroundColor = grayColor.cgColor
        collectionView.backgroundView?.wantsLayer = true
        collectionView.backgroundView?.layer?.backgroundColor = grayColor.cgColor
        let nib = NSNib(nibNamed: "ChatItem", bundle: nil)
        collectionView.register(nib, forItemWithIdentifier: "ChatItem")
        collectionView.minItemSize = NSMakeSize(150, 80)
        collectionView.maxItemSize = NSMakeSize(250, 80)
        
        let layout = NSCollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        collectionView.collectionViewLayout = layout
        
    }
    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize {
        return NSMakeSize(self.collectionView.frame.size.width-2, 80)
    }
    
}
extension CenterViewController: NSCollectionViewDelegate,NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: "ChatItem", for: indexPath) as! ChatItem
        item.iconImage.image = NSImage(named: "\(11+indexPath.item)")
        item.nameLabel.stringValue = "走哪都有风" + "\(indexPath.item)"
        item.shortMessage.stringValue = "haha" + "\(indexPath.item)"
        return item
    }
    
}
