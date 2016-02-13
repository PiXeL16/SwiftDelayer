![SwiftDelayer](/Art/swiftDelayerBanner.png)
[![Build Status](https://travis-ci.org/PiXeL16/SwiftDelayer.svg?branch=master)](https://travis-ci.org/PiXeL16/SwiftDelayer/) [![codecov.io](https://codecov.io/github/PiXeL16/SwiftDelayer/coverage.svg?branch=master)](https://codecov.io/github/PiXeL16/SwiftDelayer?branch=master) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/SwiftDelayer.svg)](https://img.shields.io/cocoapods/v/SwiftDelayer.svg) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PiXeL16/SwiftDelayer/master/LICENSE)

# Swift Delayer

Just a simple wrapper for the GCD delay functionality written in Swift  

Installation
------
Get `SwiftDelayer` on CocoaPods, just add `pod 'SwiftDelayer'` to your `Podfile` and then run `pod install`

Usage
------
```swift
import SwiftDelayer

Delayer.delayOnMainQueue(seconds: 2.0){
    print("I was delayed for 2 seconds :-)")            
}
```

You can also delay on a specific Queue
```swift
import SwiftDelayer

let backgroundQueue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)

Delayer.delayOnQueue(seconds: 3.0, queue: backgroundQueue){
    print("I was delayed for 3 seconds :-)")            
}
```

Author
------
Chris Jimenez - http://chrisjimenez.net, [@chrisjimeneznat](http://twitter.com/chrisjimeneznat)
