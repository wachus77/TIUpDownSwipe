//
//  MiddleController.swift
//  TIUpDownSwipe_Example
//
//  Created by Tomasz Iwaszek on 17/11/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import TIUpDownSwipe

class MiddleController: UIViewController {
}

extension MiddleController : TIUpDownSwipeApperanceProtocol {
    func controllerHasAppeared() {
        print("middle appeared")
    }
}

