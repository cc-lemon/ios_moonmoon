//
//  mapView.swift
//  lifeofstockholmv1
//
//  Created by Karolina Pagaduan on 2016-03-29.
//  Copyright © 2016 hyperisland. All rights reserved.
//

import MapKit
import CoreLocation
import UIKit

extension UIViewController {
    @IBAction func showMenu2() {
        if let container = self.so_containerViewController {
            container.isLeftViewControllerPresented = true
        }
    }
}


class mapView: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    

    @IBOutlet weak var mapView: MKMapView!
    

    
    
    let locationMgr = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationMgr.delegate = self
        locationMgr.requestWhenInUseAuthorization()
        locationMgr.desiredAccuracy = kCLLocationAccuracyBest
        locationMgr.startUpdatingLocation()
        
        mapView.delegate = self
        mapView.mapType = MKMapType.Standard
        mapView.showsUserLocation = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //For updating location by user
    @IBAction func getLocation(sender: UIButton) {
        locationMgr.requestWhenInUseAuthorization()
        locationMgr.desiredAccuracy = kCLLocationAccuracyBest
        locationMgr.startUpdatingLocation()
        
        mapView.delegate = self
        mapView.mapType = MKMapType.Standard
        mapView.showsUserLocation = true
    }
    
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        let center = CLLocationCoordinate2DMake(location!.coordinate.latitude, location!.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: center, span: span)
        //print(center)
        let location1 = CLLocationCoordinate2DMake(59.314464, 18.068999)
        let location2 = CLLocationCoordinate2DMake(59.319197, 18.05355)
        let location3 = CLLocationCoordinate2DMake(59.317993, 18.04754)
        
        
        
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location1
        annotation.title = "Söder test 1"
        annotation.subtitle = "Bäst"
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = location2
        annotation2.title = "Söder test 2"
        annotation2.subtitle = "NästBäst"
        
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = location3
        annotation3.title = "Söder test 3"
        annotation3.subtitle = ""
        
        
        
        mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.setRegion(region, animated: true)
        locationMgr.stopUpdatingLocation()
        
        
    }
    //Början på zoom funktion
    //Behöver göras om så att det går att zooma flera gånger
    
    @IBAction func zoomIn(sender: UIButton) {
        let userLocation = mapView.userLocation
        
        let region = MKCoordinateRegionMakeWithDistance(userLocation.location!.coordinate, 1000, 1000)
        
        mapView.setRegion(region, animated: true)
    }
    
    
    @IBAction func zoomOut(sender: UIButton) {
        let userLocation = mapView.userLocation
        
        let region = MKCoordinateRegionMakeWithDistance(userLocation.location!.coordinate, 2000, 2000)
        
        mapView.setRegion(region, animated: true)
        
    }
    
}

