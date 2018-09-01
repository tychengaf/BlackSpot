//
//  BackSpot.swift
//  BlackSpot
//
//  Created by Tony Cheng on 1/9/2018.
//  Copyright © 2018 Tony Cheng. All rights reserved.
//

import Foundation

class BlackSpot {
    
    let locationName : String
    let latitude : Double
    let longtitude : Double
    var distanceWithGPSLocation : Double
    init(name: String, lat: Double, long: Double){
        locationName = name
        latitude = lat
        longtitude = long
        distanceWithGPSLocation = 0
    }
    
}
