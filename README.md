![build](https://img.shields.io/badge/swift-5.0-orange) ![build](https://img.shields.io/badge/build-passing-dgreen) ![platform](https://img.shields.io/badge/platform-iOS-blue) ![license](https://img.shields.io/badge/license-MIT-black)



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
let text =  "Hello World!\n AttriBeauty is very awesome!"

let attributedString = text.beautfiy()
            .attriBeauty
            .fgColor(.blue)
            .bgColor(.purple).regex("t")
            .fgColor(.red).range(NSRange(0...4))
            .font(.boldSystemFont(ofSize: 30))
            .align(.center)
            .apply()
    
```

<img width="270" alt="스크린샷 2019-12-08 오전 2 44 51" src="https://user-images.githubusercontent.com/39197978/70378538-c02fbf00-1964-11ea-975d-4310855a9841.png">



## Author

O-O-wl, o.o.wl.soft@gmail.com

## License

AttriBeauty is available under the MIT license. See the LICENSE file for more info.
