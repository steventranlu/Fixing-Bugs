//
//  MapViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/25/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()

    
    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
            //Current Location of Simulator
            let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.785834, -122.406417)
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Current Location"
            annotation.subtitle = "835 Market Street"
            map.addAnnotation(annotation)
            
            let location2:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.783369, -122.440506)
            let annotation2 = MKPointAnnotation()
            annotation2.coordinate = location2
            annotation2.title = "Kaiser Permanente Pharmacy San Francisco"
            annotation2.subtitle = "2238 Geary Blvd"
            map.addAnnotation(annotation2)
            

            

    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        let userLocation = locations.last
        let viewRegion = MKCoordinateRegion(center: (userLocation?.coordinate)!, latitudinalMeters: 600, longitudinalMeters: 600)
        self.map.setRegion(viewRegion, animated: true)
    }


}
