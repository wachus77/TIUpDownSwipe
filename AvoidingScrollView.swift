//
//  AvoidingScrollView.swift
//  TIUpDownSwipe
//
//  Created by Tomasz Iwaszek on 3/7/19.
//

import UIKit

class AvoidingScrollView: UIScrollView {
    
    public var avoidingView: UIView? = nil
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let avoidingView = avoidingView, touches.count == 1, let touch = touches.first else {
            return super.touchesBegan(touches, with: event)
        }
        let location = touch.location(in: avoidingView)
        self.isScrollEnabled = true
        if avoidingView.bounds.contains(location) {
            self.isScrollEnabled = false
            return
        }
        return super.touchesBegan(touches, with: event)
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.isScrollEnabled = true
        return super.touchesEnded(touches, with: event)
    }
    override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.isScrollEnabled = true
        return super.touchesCancelled(touches, with: event)
    }
    override public func touchesShouldBegin (_ touches: Set<UITouch>, with event: UIEvent?, `in` view: UIView) -> Bool {
        guard let avoidingView = avoidingView, touches.count == 1, let touch = touches.first else {
            return super.touchesShouldBegin(touches, with: event, in: view)
        }
        let location = touch.location(in: avoidingView)
        self.isScrollEnabled = true
        if avoidingView.bounds.contains(location) {
            self.isScrollEnabled = false
            return true
        }
        return super.touchesShouldBegin(touches, with: event, in: view)
    }
    
}

