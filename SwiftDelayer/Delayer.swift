//
//  Delayer.swift
//  SwiftDelayer
//
//  Created by Chris Jimenez on 2/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation

//Small util to suply a delay on the main queue
public class Delayer {
    
    /**
     Delays a call to a closure for the number of seconds
     
     - parameter delay:   Seconds to delay the call of the closure
     - parameter closure: closure to be call
     */
    public class func delayOnMainQueue(seconds seconds:Double, closure:()->()) {
        
        return delayOnQueue(seconds: seconds, queue: dispatch_get_main_queue(), closure: closure)
    }
    
    
    
    /**
     Delay on a specific queue for the number of seconds
     
     - parameter seconds: seconds to delay
     - parameter queue:   queue
     - parameter closure: closure to be call
     */
    public class func delayOnQueue(seconds seconds:Double, queue:dispatch_queue_t, closure:()->()) {
        
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
        
        dispatch_after(dispatchTime,queue, closure)
    }
    
    
}