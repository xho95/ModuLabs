//
//  WLayer.swift
//  Icon
//
//  Created by Kim, Min Ho on 2016. 3. 25..
//  Copyright © 2016년 Void Systems. All rights reserved.
//

import UIKit

class WLayer: CAShapeLayer {
    var origin = CGPointZero
    
    override init() {
        super.init()
    }
    
    convenience init(point: CGPoint) {
        self.init()
        
        fillColor = UIColor.clearColor().CGColor
        lineWidth = 20.0
        
        self.origin = CGPointMake(point.x - lineWidth * 0.7, point.y - lineWidth * 0.7)
        
        path = rectanglePathFull.CGPath
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var rectanglePathFull: UIBezierPath {
        let rectanglePath = UIBezierPath()
        
        let left = origin.x - lineWidth * 2
        let top = origin.y - lineWidth * 2
        let middlex = origin.x - lineWidth
        let middley = origin.y - lineWidth
        
        lineCap = kCALineCapSquare
        rectanglePath.moveToPoint(CGPoint(x: origin.x, y: origin.y))
        rectanglePath.addLineToPoint(CGPoint(x: origin.x, y: middley))
        rectanglePath.addLineToPoint(CGPoint(x: middlex, y: middley))
        rectanglePath.addLineToPoint(CGPoint(x: middlex, y: top))
        rectanglePath.addLineToPoint(CGPoint(x: left, y: top))
        
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
