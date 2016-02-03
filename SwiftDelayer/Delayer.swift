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
    public class func delay(delay:Double, closure:()->()) {
        
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        
        dispatch_after(dispatchTime,dispatch_get_main_queue(), closure)
    }
    
    
}