//
//  DelayerSpecs.swift
//  SwiftDelayer
//
//  Created by Chris Jimenez on 2/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import Nimble
import Quick
import SwiftDelayer

//Specs for the delayer class
class DelayerSpecs: QuickSpec {
    
    override func spec() {
        
        let timeout: NSTimeInterval = 3
        
        it("delays for 2 seconds on mainQueue"){
            
            var value = false
            
            Delayer.delayOnMainQueue(seconds: 2.0){
                
                value = true
                
            }
            
            expect(value).toEventually(beTruthy(),timeout:timeout)
        }
        
        
        it("delays for 2 seconds on not the main Queue"){
            
            var value = false
            
            let backgroundQueue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)
            
            Delayer.delayOnQueue(seconds: 2.0, queue: backgroundQueue){
                
                value = true
                
            }
            
            expect(value).toEventually(beTruthy(),timeout:timeout)
        }
    }
    
}