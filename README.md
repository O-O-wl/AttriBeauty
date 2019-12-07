![build](https://img.shields.io/badge/swift-5.0-orange) ![pod](https://img.shields.io/badge/pods-v0.1.0-yellow) ![build](https://img.shields.io/badge/build-passing-dgreen) ![platform](https://img.shields.io/badge/platform-iOS-blue) ![license](https://img.shields.io/badge/license-MIT-black)



## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

AttriBeauty is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AttriBeauty'
```

## Usage

```swift
@IBOutlet var demoLabel: UILabel!

demoLabel.attributedText = "Hello World!\n AttriBeauty is very awesome!"
	    .beautfiy()
            .attriBeauty
            .fgColor(.blue)
            .bgColor(.purple).regex("y")
            .fgColor(.red).range(NSRange(0...4))
            .font(.boldSystemFont(ofSize: 30))
            .align(.center)
            .apply()
    
```

<img width="270" alt="스크린샷 2019-12-08 오전 3 12 16" src="https://user-images.githubusercontent.com/39197978/70378842-937da680-1968-11ea-8d43-8dda5850d5b7.png">



## Author

O-O-wl, o.o.wl.soft@gmail.com

## License

AttriBeauty is available under the MIT license. See the LICENSE file for more info.
