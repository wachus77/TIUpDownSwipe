# TIUpDownSwipe

[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/wachus77/TIUpDownSwipe/master/LICENSE)
[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-green.svg?style=flat)](https://developer.apple.com/swift/)

under development...

![Animation](https://raw.githubusercontent.com/wachus77/TIUpDownSwipe/master/Screenshots/first.gif)
![Animation](https://raw.githubusercontent.com/wachus77/TIUpDownSwipe/master/Screenshots/second.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TIUpDownSwipe is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TIUpDownSwipe'
```
## Basic Usage

```swift
import TIUpDownSwipe
```

## DataSource

```swift
class ViewController: TIUpDownSwipeViewController, TIUpDownSwipeDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        datasource = self
        topControllerColor = UIColor(hexString: "#c01d1d")
        middleControllerColor = UIColor(hexString: "#d35454")
        bottomControllerColor = UIColor(hexString: "#ff6969")
        topText = "first"
        bottomText = "last"
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
```


## Author

Tomasz Iwaszek, wachus77@gmail.com

## License

TIUpDownSwipe is available under the MIT license. See the LICENSE file for more info.
