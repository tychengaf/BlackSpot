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
import Alamofire
import SwiftyJSON
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{

    var timer: Timer!
    var refresher: UIRefreshControl!
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var accidentBlackSpotLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var dangerousLevel: UILabel!
    
    @IBAction func listButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    @IBAction func newsButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToNews", sender: self)
    }
    let locationManager = CLLocationManager()
    let allBlackSpots = BlackSpotBank()// create Object that contain all BlackSpot Class
    
    let URL = "https://maps.googleapis.com/maps/api/geocode/json?"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateGPSLocation()
        refresher = UIRefreshControl()
        refresher.addTarget(self, action: #selector(ViewController.refresh(_:)), for: .valueChanged)
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector:#selector(ViewController.refreshEvery15Secs), userInfo: nil, repeats: true)
    
        
    }

    @objc func refreshEvery15Secs(){
        updateGPSLocation()
        print("refreshed")
    }
    
    @objc func refresh(_ sender: AnyObject){
        
        refreshEvery15Secs() // calls when ever button is pressed
    }
//    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
//        if segue.identifier == "goToNews"{
//            let newsVC = segue.destination as! NewsViewController
//        }
//        if segue.identifier == "goToList"{
//            let listVC = segue.destination as! ListViewController
//        }
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Networking
    /***************************************************************/
    func getLocationNameData(url: String, parameters: [String: String]){
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            if response.result.isSuccess{
                print("Success! Got the Name data")
                
                let locationNameJSON : JSON = JSON(response.result.value!)
               // print(locationNameJSON)
                //self.updateLocationData(json: locationNameJSON)
                let locationValue = locationNameJSON["results"][1]["address_components"][0]["short_name"].stringValue
                print(locationValue)
                self.currentLocationLabel.text = "   " + locationValue

//                let testBlackSpot: String = self.allBlackSpots.list[1].locationName
//                print(testBlackSpot)
//                self.accidentBlackSpotLabel.text = testBlackSpot
                
            }
            else{
                print("Error \(response.result.error)")
                self.currentLocationLabel.text = "Connection Issues"
            }
            self.activityIndicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
    }

//    func updateLocationData(json: JSON){
//
//    }
    //MARK: - Distance Calculation from current to all black spot
    /***************************************************************/
    func fineShortestDistance(gpsLat:Double,gpsLong: Double)-> Double{
        var distanceArray = [Double]()
        var annoArray = [MKPointAnnotation]()
        var distance: Double
        var tempSmallestDist: Double = 0
        var index = 0
        for i in 0...(allBlackSpots.list.count-1){
            annoArray.append(MKPointAnnotation())
            distance = distanceInKmBetweenEarthCoordinates(lat1:gpsLat, lon1:gpsLong, lat2:allBlackSpots.list[i].latitude, lon2:allBlackSpots.list[i].longtitude)
           
               // createAnnotation(lat: allBlackSpots.list[i].latitude, long: allBlackSpots.list[i].longtitude)
                //let gpsLocation = MKPointAnnotation()
                
                annoArray[i].coordinate = CLLocationCoordinate2D(latitude: allBlackSpots.list[i].latitude, longitude: allBlackSpots.list[i].longtitude)
                mapView.addAnnotation(annoArray[i])
            
            if i == 0{
                tempSmallestDist = distance
            }
            else if distance < tempSmallestDist{
                tempSmallestDist = distance
                index = i
            }
            distanceArray.append(distance)
           // print(allBlackSpots.list[i].latitude, allBlackSpots.list[i].longtitude,distance )
//            allBlackSpots.list[i].distanceWithGPSLocation = distanceInKmBetweenEarthCoordinates(lat1:gpsLat, lon1:gpsLong, lat2:allBlackSpots.list[i].latitude, lon2:allBlackSpots.list[i].longtitude)
            
        }
        accidentBlackSpotLabel.text = "   \(allBlackSpots.list[index].locationName)"
        print(distanceArray.min()!)
        dangerousLevel.text = allBlackSpots.presentDangerousLevel(level: allBlackSpots.list[index].dangerousLevel)
        //MAP STUFF FOR BLACK SPOT
        /************************************/
//        let blackLocation = MKPointAnnotation()
//        blackLocation.title = "BLACKSPOT"
//        blackLocation.coordinate = CLLocationCoordinate2D(latitude: allBlackSpots.list[index].latitude, longitude: allBlackSpots.list[index].longtitude)
//        mapView.addAnnotation(blackLocation)
        annoArray[index].title = "CLOSEST"
        return tempSmallestDist
    }
    
    func createAnnotation(lat: Double, long: Double){
        
    }
    
    //MARK: - GPS
    /***************************************************************/
    func updateGPSLocation(){
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    
    //MARK: - Distance Calculation
    /***************************************************************/
    func degreesToRadians(degrees: Double) -> Double{
        return degrees * Double.pi / 180;
    }
    func distanceInKmBetweenEarthCoordinates(lat1: Double, lon1: Double, lat2: Double, lon2: Double)-> Double {
        let earthRadiusKm: Double = 6371;
        
        let dLat = degreesToRadians(degrees:(lat2-lat1));
        let dLon = degreesToRadians(degrees:(lon2-lon1));
        
        let nlat1 = degreesToRadians(degrees: lat1);
        let nlat2 = degreesToRadians(degrees: lat2);
        //Darwin in action
        let a = sin(dLat/2) * sin(dLat/2) +
            sin(dLon/2) * sin(dLon/2) * cos(nlat1) * cos(nlat2);
        let c = 2 * atan2(sqrt(a), sqrt(1-a));
        return earthRadiusKm * c;
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else { return nil }
        
        let identifier = "Annotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
        } else {
            annotationView!.annotation = annotation
        }
        
        return annotationView
    }
    
    
    
    
    
    //MARK: - tap GPS
    /***************************************************************/
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            
            locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            
            print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
            let latlong:String = "\(location.coordinate.latitude),\(location.coordinate.longitude)"
            
            //insert calculation
            
            let shortestDistance = fineShortestDistance(gpsLat: location.coordinate.latitude,gpsLong: location.coordinate.longitude)//*100.rounded()/100
            
            distanceLabel.text = String(format: "%.2f", shortestDistance) + " km   "
            
            //MAP STUFF FOR CURRENT POSITION    22.425561    114.21326
            /************************************/
            let span = MKCoordinateSpanMake(0.09,0.09)
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude), span: span)
            mapView.setRegion(region, animated: true)
//            let gpsLocation = MKPointAnnotation()
//            gpsLocation.title = "YOU"
//            gpsLocation.coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//            mapView.addAnnotation(gpsLocation)
            
            print(latlong)
//          
//            print(distanceInKmBetweenEarthCoordinates(lat1: location.coordinate.latitude, lon1: location.coordinate.longitude, lat2: 22.444525, lon2: 114.029518))
            let params : [String : String] = ["latlng": latlong, "sensor": "true"]
            //function to compare
             getLocationNameData(url: URL, parameters: params)
        }
        
        
        
    }
}

