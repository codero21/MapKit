//
//  ViewController.swift
//  MapTest
//
//  Created by Rollin Francois on 9/3/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    // MARK: Outlets
    
    @IBOutlet var mapModeSegmentControl: UIView!
    @IBOutlet weak var mapView: MKMapView!
    
    
    // MARK: Action Methods
    
    @IBAction func onSegmentChanged(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
        mapRegion.center.latitude = 51.5001524
        mapRegion.center.longitude = -0.1262362
        mapRegion.span.latitudeDelta = 0.2
        mapRegion.span.longitudeDelta = 0.2
        mapView.setRegion(mapRegion, animated: true)
        
        
        // Drop a pin on Parliament Square
        
        let parliamentLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.5001524, -0.1262362)
        
        let parliamentAnnotation = PlacemarkClass(coordinate: parliamentLocation, title: "Parliament Square", subtitle: "Big Ro is here!")
        
        mapView.addAnnotation(parliamentAnnotation)
        
    }

    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        let newAnnotation: MKPinAnnotationView = MKPinAnnotationView(annotation: "annotation" as! MKAnnotation, reuseIdentifier: "annotation1")
        
        let newAnnotation: MKPinAnnotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "annotation1")
        
        
        newAnnotation.pinTintColor = UIColor.yellow
        newAnnotation.animatesDrop = true
        newAnnotation.canShowCallout = true
        newAnnotation.setSelected(true, animated: true)
        
        return newAnnotation
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

