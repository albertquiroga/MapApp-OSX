//
//  WindowController.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 20/9/15.
//  Copyright (c) 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Foundation
import Cocoa

class WindowController: NSWindowController{

    @IBOutlet weak var timeSlider: NSSlider!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.titleVisibility = NSWindowTitleVisibility.Hidden
    }
}