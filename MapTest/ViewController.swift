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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

