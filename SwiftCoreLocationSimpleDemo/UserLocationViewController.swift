//
//  UserLocationViewController.swift
//  SwiftCoreLocationSimpleDemo
//
//  Created by Nazmul Hasan on 10/6/16.
//  Copyright © 2016 Nazmul Hasan. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class UserLocationViewController: UIViewController,CLLocationManagerDelegate{
    
    
    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configeration for  user location access
        //The delegate object to receive update events.
        locationManager.delegate = self
        //The receiver does its best to achieve the requested accuracy
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //Requests permission to use location services while the app is in the foreground
        locationManager.requestWhenInUseAuthorization()
        //Starts the generation of updates that report the user’s current location
        locationManager.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Starts the generation of updates that report the user’s current location
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //print(locations)
         //get the actual location from the device and first one each move
        let userClLocation : CLLocation = locations[0]
       
        let latitude = userClLocation.coordinate.latitude
        let longitude = userClLocation.coordinate.longitude
        let letDelta : CLLocationDegrees = 0.05
        let lonDelta : CLLocationDegrees = 0.05
        
        //indicate the desired zoom level of the map
        let mkCoordinateSpan = MKCoordinateSpan(latitudeDelta: letDelta, longitudeDelta: lonDelta)
        //this contains indicate a geographical coordinate
        let clLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        //defines which portion of the map to display
        let mkCoordinateRegion = MKCoordinateRegion(center: clLocationCoordinate2D, span: mkCoordinateSpan)
        // to display in the map view
        self.map.setRegion(mkCoordinateRegion, animated: true)
    
    }


}
