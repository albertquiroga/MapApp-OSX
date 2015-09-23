//
//  ViewController.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 7/9/15.
//  Copyright (c) 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Cocoa
import MapKit

class ViewController: NSViewController, NSWindowDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let map = TrackerMapView()
    let dataDownloader = DataDownloader()
    let bike = Motorbike()
    
    @IBAction func sliderMoved(sender: NSSlider) {
        print(bike.getBit(Int(sender.maxValue)-sender.integerValue).timestamp)
        map.removeCurrentMarker()
        map.addMarker(createMarkerFromBit(bike.getBit(Int(sender.maxValue)-sender.integerValue)))
    }
    
    @IBAction func buttonPressed(sender: NSButton) {
        print("Refreshing data...")
        updateBikeData()
        map.removeCurrentMarker()
        map.addMarker(createMarkerFromBit(bike.getLastBit()))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Special code to link toolbar buttons (which belong to the window, not the view) with this view
        let window = NSApplication.sharedApplication().windows[0]
        window.delegate = self;
        
        map.setMap(mapView)
        updateBikeData()
        map.addMarker(createMarkerFromBit(bike.getLastBit()))
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func updateBikeData(){
        bike.deleteBits()
        let csv = dataDownloader.downloadCSV()
        for row in csv.rows {
            let bit = TimeBit(bat: row["bat"]!, fix: row["fix"]!, lat: row["lat"]!, lon: row["long"]!, net: row["net"]!, timestamp: row["timestamp"]!)
            bike.addBit(bit)
        }
    }
    
    func createMarkerFromBit(bit:TimeBit) -> TrackerMarker {
        return TrackerMarker(title: bike.name, subtitle: bike.id, bit: bit)
    }

}

