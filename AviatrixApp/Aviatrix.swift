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
    var fuelLevel : Double
    var maxFuel : Int
    var milesPerGallon : Double
    var usedMiles : Double
    var distanceTraveled : Int
    init(authorName:String, position:String) {
        location = position
        author = authorName
        distanceTraveled = 0
        maxFuel = 5000
        fuelLevel = 5000.0
        milesPerGallon = 0.4
        usedMiles = 0
    }
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
    
    }
    
    func flyTo(destination : String) {
        location = destination
        distanceTraveled = distanceTraveled + distanceTo(target: location)
        fuelLevel = fuelLevel - Double(distanceTraveled) * milesPerGallon
        usedMiles = Double(distanceTraveled) * milesPerGallon
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances["St. Louis"]![target]!
    
    }
    
    func knownDestinations() -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }

}
