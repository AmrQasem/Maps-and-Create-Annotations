//
//  ViewController.swift
//  Maps
//
//  Created by Clicks Egypt on 12/11/19.
//  Copyright © 2019 Clicks Egypt. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longitude: CLLocationDegrees = 30.05
        let latitude: CLLocationDegrees = 31.09
        let longDelta: CLLocationDegrees = 0.05
        let latDelte: CLLocationDegrees = 0.05
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelte, longitudeDelta: longDelta)
        let coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinate, span: span)
        
        map.setRegion(region, animated: true)
        let annotation: MKPointAnnotation = MKPointAnnotation()
        annotation.title = "Hena sada2t"
        annotation.subtitle = "7elmy w bada2t"
        annotation.coordinate = coordinate
        
        map.addAnnotation(annotation)
        
        
        
        
        let uilgpr = UILongPressGestureRecognizer(target: self, action: #selector(self.lognpress(gestureRecoginzer:)))
        
        uilgpr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilgpr)
        
        // Do any additional setup after loading the view.
    }
    @objc func lognpress(gestureRecoginzer: UIGestureRecognizer){
        
        let touchpoint = gestureRecoginzer.location(in: self.map)
        let coordinate = self.map.convert(touchpoint, toCoordinateFrom: self.map)
        let annotation = MKPointAnnotation()
        annotation.title = "Ana hena ya joooon"
        annotation.subtitle = "Ana geet tany"
        annotation.coordinate = coordinate
        
        map.addAnnotation(annotation)
        
        
        
    }


}

