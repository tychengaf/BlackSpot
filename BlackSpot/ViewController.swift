//
//  ViewController.swift
//  BlackSpot
//
//  Created by Tony Cheng on 1/9/2018.
//  Copyright © 2018 Tony Cheng. All rights reserved.
//

import UIKit
import CoreLocation
import Darwin

class ViewController: UIViewController, CLLocationManagerDelegate{

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateGPSLocation()

     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func updateGPSLocation(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    func degreesToRadians(degrees: Double) -> Double{
        return degrees * Double.pi / 180;
    }
    func distanceInKmBetweenEarthCoordinates(lat1: Double, lon1: Double, lat2: Double, lon2: Double)-> Double {
        let earthRadiusKm: Double = 6371;
        
        let dLat = degreesToRadians(degrees:(lat2-lat1));
        let dLon = degreesToRadians(degrees:(lon2-lon1));
        
        let nlat1 = degreesToRadians(degrees: lat1);
        let nlat2 = degreesToRadians(degrees: lat2);
        
        let a = sin(dLat/2) * sin(dLat/2) +
            sin(dLon/2) * sin(dLon/2) * cos(nlat1) * cos(nlat2);
        let c = 2 * atan2(sqrt(a), sqrt(1-a));
        return earthRadiusKm * c;
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            
            locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            
            print("longtitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
            print("here")
            let longtitude = String(location.coordinate.longitude)
            let latitude = String(location.coordinate.latitude)
          
            print(distanceInKmBetweenEarthCoordinates(lat1: location.coordinate.latitude, lon1: location.coordinate.longitude, lat2: 22.444525, lon2: 114.029518))

            //function to compare
        }
        
        
        
    }
}

