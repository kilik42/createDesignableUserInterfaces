//
//  customView.swift
//  createDesignableUserInterfaces
//
//  Created by marvin evins on 5/29/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

@IBDesignable
class customView: UIView {
    
    override class func layerClass() ->
        AnyClass{
            return CAGradientLayer.self
        }
    var gradientLayer:   CAGradientLayer{
        return layer as! CAGradientLayer
    }
    
    
    override func drawRect(rect: CGRect) {
        //drawing code
        layer.masksToBounds = true
        layer.borderWidth = 10.0
        layer.borderColor = UIColor(red: 0.0, green: 64/255.0, blue: 128/255.0, alpha: 1.0).CGColor
        layer.cornerRadius = 20.0
        
        let startColor = UIColor(red: 102/255.0, green: 204/255.0, blue: 1.0, alpha: 1.0).CGColor
        let endColor = UIColor(red: 0.0, green: 128/255.0, blue: 1.0, alpha: 1.0).CGColor
        gradientLayer.colors = [startColor, endColor]
    }
    

}
