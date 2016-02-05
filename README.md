![SwiftDelayer](/Art/swiftDelayerBanner.png)


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
