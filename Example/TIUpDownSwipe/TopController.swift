//
//  TopController.swift
//  TIUpDownSwipe_Example
//
//  Created by Tomasz Iwaszek on 17/11/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import TIUpDownSwipe

class TopController: UIViewController {
}

extension TopController : TIUpDownSwipeApperanceProtocol {
    func controllerHasAppeared() {
        print("top appeared")
    }
}
