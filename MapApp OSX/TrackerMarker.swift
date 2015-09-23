//
//  TrackerMarker.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 12/9/15.
//  Copyright (c) 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Foundation
import MapKit

class TrackerMarker:NSObject, MKAnnotation {
    let title:String?
    let subtitle:String?
    let coordinate:CLLocationCoordinate2D
    
    override init(){
        self.title = ""
        self.subtitle = ""
        self.coordinate = CLLocationCoordinate2D()
        super.init()
    }
    
    init(title:String, subtitle:String, coordinate:CLLocationCoordinate2D){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        super.init()
    }
    
    init(title:String, subtitle:String, bit:TimeBit){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = CLLocationCoordinate2D(latitude: bit.lat, longitude: bit.lon)
        super.init()
    }
    
}

