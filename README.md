![SwiftDelayer](/Art/swiftDelayerBanner.png)
[![Build Status](https://travis-ci.org/PiXeL16/SwiftDelayer.svg?branch=master)](https://travis-ci.org/PiXeL16/SwiftDelayer/) [![codecov.io](https://codecov.io/github/PiXeL16/SwiftDelayer/coverage.svg?branch=master)](https://codecov.io/github/PiXeL16/SwiftDelayer?branch=master) [![Cocoapods Compatible](https://img.shields.io/cocoapods/v/SwiftDelayer.svg)](https://img.shields.io/cocoapods/v/SwiftDelayer.svg) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PiXeL16/SwiftDelayer/master/LICENSE)

# Swift Delayer

Just a simple wrapper for the GCD delay functionality written in Swift  

Installation
------
Get `SwiftDelayer` on CocoaPods, just add `pod 'SwiftDelayer'` to your `Podfile` and then run `pod install`

Usage
------
```swift
import SwiftDelayer

Delayer.delay(2.0){
    print("I was delay for 2 seconds :-)")            
}
```

Author
------
Chris Jimenez - http://chrisjimenez.net, [@chrisjimeneznat](http://twitter.com/chrisjimeneznat)
