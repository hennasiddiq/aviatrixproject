//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation
var data = AviatrixData()
class Aviatrix{
    var location:String
    var running = false
    var author : String
    init(authorName:String, position:String) {
        location = position
        author = authorName
    }
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
    
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances["St. Louis"]![target]!
    
    }
    
    func knownDestinations() -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }

}
