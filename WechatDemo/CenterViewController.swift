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
        
//       let addWindowContent = NSStoryboard(name: "Main", bundle: Bundle.main).instantiateController(withIdentifier: "AddWindowController") as! AddWindowController
//        let sheetWindow = addWindowContent.window
//        let x = self.view.window?.frame.origin.x
//        let y = self.view.window?.frame.origin.y
//        let width = self.view.window?.frame.size.width
//        let height = self.view.window?.frame.size.height
//        sheetWindow?.styleMask = .borderless
//        sheetWindow?.contentRect(forFrameRect: NSMakeRect(x!+height! - 40,y! + width!/2 - (sheetWindow?.frame.width)!/2, 400, 250))
//        
//       view.window?.addChildWindow(sheetWindow!, ordered: .above)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        collectionView.wantsLayer = true
        collectionView.layer?.backgroundColor = NSColor(red:0.95, green:0.95, blue:0.95, alpha:1.00).cgColor
        collectionView.backgroundView?.wantsLayer = true
        collectionView.backgroundView?.layer?.backgroundColor = NSColor(red:0.91, green:0.91, blue:0.91, alpha:1.00).cgColor
        let nib = NSNib(nibNamed: "ChatItem", bundle: nil)
        collectionView.register(nib, forItemWithIdentifier: "ChatItem")
        collectionView.minItemSize = NSMakeSize(150, 80)
        collectionView.maxItemSize = NSMakeSize(250, 80)
        let layout = NSCollectionViewFlowLayout()
        layout.minimumLineSpacing = 0.9
        
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
