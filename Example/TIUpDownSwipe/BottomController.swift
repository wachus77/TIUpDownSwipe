//
//  BottomController.swift
//  TIUpDownSwipe_Example
//
//  Created by Tomasz Iwaszek on 17/11/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import TIUpDownSwipe

class BottomController: UIViewController {
}

extension BottomController : TIUpDownSwipeApperanceProtocol {
    func controllerHasAppeared() {
        print("Reminder appeared")
    }
}
