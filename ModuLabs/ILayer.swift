//
//  ILayer.swift
//  Icon
//
//  Created by Kim, Min Ho on 2016. 3. 26..
//  Copyright © 2016년 Void Systems. All rights reserved.
//

import UIKit

class ILayer: CAShapeLayer {
    var origin = CGPointZero
    
    override init() {
        super.init()
    }
    
    convenience init(point: CGPoint) {
        self.init()
        
        fillColor = UIColor.clearColor().CGColor
        lineWidth = 20.0
        
        self.origin = CGPointMake(point.x - lineWidth * 0.7, point.y + lineWidth * 0.7)
        
        path = rectanglePathFull.CGPath
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var rectanglePathFull: UIBezierPath {
        let rectanglePath = UIBezierPath()
        
        let left = origin.x - lineWidth * 2
        let bottom = origin.y + lineWidth * 2
        
        lineCap = kCALineCapSquare
        rectanglePath.moveToPoint(CGPoint(x: left, y: bottom))
        rectanglePath.addLineToPoint(CGPoint(x: left, y: origin.y))
        
        return rectanglePath
    }
    
    func animateStrokeWithColor(color: UIColor) {
        strokeColor = color.CGColor
        
        let strokeAnimation: CABasicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        strokeAnimation.fromValue = 0.0
        strokeAnimation.toValue = 1.0
        strokeAnimation.duration = 0.0
        
        addAnimation(strokeAnimation, forKey: nil)
    }
}
