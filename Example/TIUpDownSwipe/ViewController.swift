//
//  ViewController.swift
//  TIUpDownSwipe
//
//  Created by tomek.iwaszek on 02/13/2019.
//  Copyright (c) 2019 tomek.iwaszek. All rights reserved.
//

import UIKit
import TIUpDownSwipe

class ViewController: TIUpDownSwipeViewController, TIUpDownSwipeDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datasource = self
    }
    
    func upDownSwipeTopViewController(_ upDownSwipeController: TIUpDownSwipeViewController) -> UIViewController {
        return UIViewController()
    }
    
    func upDownSwipeMiddleViewController(_ upDownSwipeController: TIUpDownSwipeViewController) -> UIViewController {
        return UIViewController()
    }
    
    func upDownSwipeBottomViewController(_ upDownSwipeController: TIUpDownSwipeViewController) -> UIViewController {
        return UIViewController()
    }
}

