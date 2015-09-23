//
//  TrackerMapView.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 21/9/15.
//  Copyright © 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Foundation
import MapKit

class TrackerMapView {
    
    var currentMarker:TrackerMarker = TrackerMarker()
    var map:MKMapView = MKMapView()
    let regionRadius: CLLocationDistance = 1000
    
    func setMap(map:MKMapView) {
        self.map = map
    }
    
    func addMarker(marker:TrackerMarker) {
        map.addAnnotation(marker)
        centerMapOnLocation(CLLocation(latitude: marker.coordinate.latitude, longitude: marker.coordinate.longitude))
        currentMarker = marker
    }
    
    func removeCurrentMarker() {
        map.removeAnnotation(currentMarker)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius * 2.0, regionRadius * 2.0)
        map.setRegion(coordinateRegion, animated: true)
    }
    
}