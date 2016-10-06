//
//  ViewController.swift
//  SwiftCoreLocationSimpleDemo
//
//  Created by Nazmul Hasan on 10/6/16.
//  Copyright © 2016 Nazmul Hasan. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet  var locationMapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Cox's Bazar Beach Cox's Bazar Beach, located at Cox's Bazar, Bangladesh, is the longest unbroken sea beach in the world, running 120 kilometres. It is the top tourist destination of Bangladesh
        //21.427727, 91.971151
        let latitude : CLLocationDegrees = 21.42
        let longitude : CLLocationDegrees = 91.97
        let letDelta : CLLocationDegrees = 0.05
        let lonDelta : CLLocationDegrees = 0.05
        
        //indicate the desired zoom level of the map
        let mkCoordinateSpan = MKCoordinateSpan(latitudeDelta: letDelta, longitudeDelta: lonDelta)
        //this contains indicate a geographical coordinate
        let clLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        //defines which portion of the map to display
        let mkCoordinateRegion = MKCoordinateRegion(center: clLocationCoordinate2D, span: mkCoordinateSpan)
        // to display in the map view
        locationMapView.setRegion(mkCoordinateRegion, animated: true)
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

