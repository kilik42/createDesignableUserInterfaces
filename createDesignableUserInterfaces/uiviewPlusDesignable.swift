//
//  uiviewPlusDesignable.swift
//  createDesignableUserInterfaces
//
//  Created by marvin evins on 6/2/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

@IBDesignable class DesignableImageView: UIImageView{}
@IBDesignable class DesignableButton:  UIButton{}
@IBDesignable class DesignableTextField:  UITextField{

@IBInspectable
var placeholderTextColor:  UIColor = UIColor.lightGrayColor(){
    
didSet{
    guard let placeholder = placeholder else{
        return
      }
    attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName: placeholderTextColor])
   }

 }
}
extension UIView {
    
    @IBInspectable
    var borderWidth: CGFloat {
        
        get{
            return layer.borderWidth
        }
        set(newBorderWidth){
            layer.borderWidth = newBorderWidth
        }
        
    }
    
    
    @IBInspectable
    var borderColor: UIColor?{
        get {
            return layer.borderColor != nil ? UIColor(CGColor: layer.borderColor!) : nil
        }

        set {
            layer.borderColor = newValue?.CGColor
        }
        
    }
    
    
    @IBInspectable
    var cornerRadius: CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            
           layer.cornerRadius = newValue
            layer.masksToBounds = newValue != 0
        }
    }
    
    
    @IBInspectable
    
    var makeCircular: Bool? {
        
        get {
            return nil
        }
        set {
            if let makeCircular = newValue where makeCircular{
                cornerRadius = min(bounds.width, bounds.height)/2.0
            }
        }
    }
}
