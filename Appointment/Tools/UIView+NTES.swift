//
//  UIView+NTES.swift
//  VSEE
//
//  Created by 张鹏 on 15/12/21.
//  Copyright © 2015年 SmallCobblerStudio. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    var left:CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = left
            self.frame = frame
        }
        get {
            return frame.origin.x
        }
    }
    
    var top:CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = top
            self.frame = frame
        }
        get {
            return frame.origin.y
        }
    }
    
    var right:CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = right - frame.size.width
            self.frame = frame
        }
        get {
            return frame.origin.x + frame.size.width
        }
    }
    
    var bottom:CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = bottom - frame.size.height
            self.frame = frame
        }
        get {
            return frame.origin.y + frame.size.height
        }
    }
    
    var centerX:CGFloat {
        set {
            center = CGPointMake(centerX, self.center.y)
        }
        get {
            return center.x
        }
    }
    
    var centerY:CGFloat {
        set {
            center = CGPointMake(self.center.x, centerY)
        }
        get {
            return center.y
        }
    }
    
    var width:CGFloat {
        set {
            var frame = self.frame
            frame.size.width = width
            self.frame = frame
        }
        get {
            return frame.size.width
        }
    }
    
    var height:CGFloat {
        set {
            var frame = self.frame
            frame.size.height = height
            self.frame = frame
        }
        get {
            return frame.size.height
        }
    }
    
    var origin:CGPoint {
        set {
            var frame = self.frame
            frame.origin = origin
            self.frame = frame
        }
        get {
            return frame.origin
        }
    }
    
    var size:CGSize {
        set {
            var frame = self.frame
            frame.size = size
            self.frame = frame
        }
        get {
            return frame.size
        }
    }
    
    func viewController() -> UIViewController? {
        for (var next = self;next.isKindOfClass(UIView) ;next = next.superview!) {
            let nextResponder = next.nextResponder()
            if nextResponder!.isKindOfClass(UIViewController) {
                return nextResponder as? UIViewController
            }
            
        }
        return nil
    }
}


