//
//  PlacemarkClass.swift
//  MapTest
//
//  Created by Rollin Francois on 9/4/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import Foundation
import MapKit

class PlacemarkClass: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
    
}
