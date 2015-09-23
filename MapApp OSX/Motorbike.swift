//
//  MBike.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 19/9/15.
//  Copyright (c) 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Foundation

public class Motorbike {
    let name = "Suzuki Gladius"
    let id = "4700 HHJ"
    var timebits = [TimeBit]()
    
    func addBit(bit: TimeBit){
        timebits.append(bit)
    }
    
    func getBit(id: Int) -> TimeBit {
        return timebits[id]
    }
    
    func getLastBit() -> TimeBit {
        return timebits[0]
    }
    
    func deleteBits() {
        timebits.removeAll()
    }
    
}