//
//  TimeBit.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 18/9/15.
//  Copyright (c) 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Foundation

struct TimeBit {
    let bat:Int
    let fix:Int
    let lat:Double
    let lon:Double
    let net:Int
    let timestamp:String
    
    init(bat:String, fix:String, lat:String, lon:String, net:String, timestamp:String){
        self.bat = NSString(string: bat).integerValue
        self.fix = NSString(string: fix).integerValue
        self.lat = NSString(string: lat).doubleValue
        self.lon = NSString(string: lon).doubleValue
        self.net = NSString(string: net).integerValue
        self.timestamp = timestamp
    }
}
