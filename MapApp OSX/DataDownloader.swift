//
//  DataDownloader.swift
//  MapApp
//
//  Created by Albert Quiroga Bertolin on 19/9/15.
//  Copyright (c) 2015 Albert Quiroga Bertolin. All rights reserved.
//

import Foundation

class DataDownloader {
    
    let sparkfun = "https://data.sparkfun.com/output/"
    let key = "NJxVpznlJ9FjmnVaYZEg"
    
    func downloadCSV() -> CSV {
        let csvURL = NSURL(string: sparkfun+key+".csv")
        let error: NSErrorPointer = nil
        var datastring = NSString()
        var comma = NSCharacterSet()
        do{
            datastring = try NSString(contentsOfURL: csvURL!, encoding:NSUTF8StringEncoding)
            comma = NSCharacterSet(charactersInString: ",")
        } catch {
            print("Failed to download data")
        }
        return CSV(content: datastring as String, delimiter: comma, encoding: NSUTF8StringEncoding, error: error)!
    }
    
}