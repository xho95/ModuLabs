//
//  OLayer.swift
//  Icon
//
//  Created by Kim, Min Ho on 2016. 3. 25..
//  Copyright © 2016년 Void Systems. All rights reserved.
//

import UIKit

class OLayer: CAShapeLayer {
    var origin = CGPointZero

    override init() {
        super.init()
    }
    
    convenience init(point: CGPoint) {
        self.init()

        self.fillColor = UIColor.clearColor().CGColor
        self.lineWidth = 20.0
        self.lineJoin = kCALineJoinRound
        
        self.origin = CGPointMake(point.x + lineWidth * 0.7, point.y - lineWidth * 0.7)
        
        path = rectanglePathFull.CGPath
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var rectanglePathFull: UIBezierPath {
        let rectanglePath = UIBezierPath()
        
        let right = origin.x + lineWidth * 2
        let top = origin.y - lineWidth * 2
        
        rectanglePath.moveToPoint(CGPoint(x: origin.x, y: origin.y))
        rectanglePath.addLineToPoint(CGPoint(x: origin.x, y: top))
        rectanglePath.addLineToPoint(CGPoint(x: right, y: top))
        rectanglePath.addLineToPoint(CGPoint(x: right, y: origin.y))
        rectanglePath.addLineToPoint(CGPoint(x: origin.x, y: origin.y))
        rectanglePath.closePath()
        
        return rectanglePath
    }
    
    func animateStrokeWithColor(color: UIColor) {
        strokeColor = color.CGColor
        
        let strokeAnimation: CABasicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        strokeAnimation.fromValue = 0.0
        strokeAnimation.toValue = 1.0
        strokeAnimation.duration = 0.4
        
        addAnimation(strokeAnimation, forKey: nil)
    }
}
