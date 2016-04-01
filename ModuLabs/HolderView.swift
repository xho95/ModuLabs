//
//  HolderView.swift
//  Icon
//
//  Created by Kim, Min Ho on 2016. 3. 25..
//  Copyright © 2016년 Void Systems. All rights reserved.
//

import UIKit

class HolderView: UIView {
    // MARK: - Properties
    var parentFrame: CGRect = CGRectZero
    
//    let lineWidth = 20.0

    // MARK: - Main Methods
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.clearColor()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
    }

    // MARK: - Helper Methods

    func start() {
        NSTimer.scheduledTimerWithTimeInterval(0.45, target: self, selector: #selector(HolderView.drawO), userInfo: nil, repeats: false)
    }

    func drawO() {
        let blackO = OLayer(point: CGPointMake(frame.width / 2, frame.height / 2))
        
        self.layer.addSublayer(blackO)

        blackO.animateStrokeWithColor(UIColor.blackColor())
        
        NSTimer.scheduledTimerWithTimeInterval(0.45, target: self, selector: #selector(HolderView.drawU), userInfo: nil, repeats: false)
    }
    
    func drawU() {
        let blackU = ULayer(point: CGPointMake(frame.width / 2, frame.height / 2))
        
        layer.addSublayer(blackU)
        
        blackU.animateStrokeWithColor(UIColor.blackColor())
        
        NSTimer.scheduledTimerWithTimeInterval(0.45, target: self, selector: #selector(HolderView.drawD), userInfo: nil, repeats: false)
    }
    
    func drawD() {
        let blackD = DLayer(point: CGPointMake(frame.width / 2, frame.height / 2))
        
        layer.addSublayer(blackD)
        
        blackD.animateStrokeWithColor(UIColor.blackColor())
        
        NSTimer.scheduledTimerWithTimeInterval(0.45, target: self, selector: #selector(HolderView.drawI), userInfo: nil, repeats: false)
    }
    
    func drawI() {
        let blackI = ILayer(point: CGPointMake(frame.width / 2, frame.height / 2))
        
        layer.addSublayer(blackI)
        
        blackI.animateStrokeWithColor(UIColor.blackColor())
        
        drawW()
    }
    
    func drawW() {
        let pinkW = WLayer(point: CGPointMake(frame.width / 2, frame.height / 2))
        
        layer.addSublayer(pinkW)
        
        pinkW.animateStrokeWithColor(UIColor(red: 0xED/0xFF, green: 0x1A/0xFF, blue: 0x5E/0xFF, alpha: 1))
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
