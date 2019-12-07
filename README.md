![build](https://img.shields.io/badge/swift-5.0-orange) ![pod](https://img.shields.io/badge/pod-v0.1.0-yellow) ![build](https://img.shields.io/badge/build-passing-dgreen) ![platform](https://img.shields.io/badge/platform-iOS-blue) ![license](https://img.shields.io/badge/license-MIT-black)



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

demoLabel.attributedText = demoLabel.text?
			      .beautfiy()
            .attriBeauty
            .fgColor(.blue)
            .bgColor(.green).regex("awesome")
            .fgColor(.red).range(NSRange(0...4))
            .font(.boldSystemFont(ofSize: 30))
            .align(.center)
            .apply()
    
```

<img width="270" alt="스크린샷 2019-12-08 오전 4 10 26" src="https://user-images.githubusercontent.com/39197978/70379493-aeecaf80-1970-11ea-92c1-8244dd435143.png">



## Author

O-O-wl, o.o.wl.soft@gmail.com

## License

AttriBeauty is available under the MIT license. See the LICENSE file for more info.
