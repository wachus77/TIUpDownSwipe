//
//  ViewController.swift
//  TIUpDownSwipe
//
//  Created by tomek.iwaszek on 02/13/2019.
//  Copyright (c) 2019 tomek.iwaszek. All rights reserved.
//

import UIKit
import TIUpDownSwipe

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

class ViewController: TIUpDownSwipeViewController, TIUpDownSwipeDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datasource = self
        topControllerColor = UIColor(hexString: "#c01d1d")
        middleControllerColor = UIColor(hexString: "#d35454")
        bottomControllerColor = UIColor(hexString: "#ff6969")
        topText = "first"
        bottomText = "last"
        hideGripperViews = false
    }
    
    func upDownSwipeTopViewController(_ upDownSwipeController: TIUpDownSwipeViewController) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "topController")
    }
    
    func upDownSwipeMiddleViewController(_ upDownSwipeController: TIUpDownSwipeViewController) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "middleController")
    }
    
    func upDownSwipeBottomViewController(_ upDownSwipeController: TIUpDownSwipeViewController) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "bottomController")
    }
}

