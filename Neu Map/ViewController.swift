//
//  ViewController.swift
//  Neu Map
//
//  Created by iMac11 on 6/23/2559 BE.
//  Copyright © 2559 araya. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var myMapView: MKMapView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myLat:CLLocationDegrees = 16.421587
        let myLng:CLLocationDegrees = 102.817724
        
        let latDelta:CLLocationDegrees = 0.01
        let lngDelta:CLLocationDegrees = 0.01
    
        
        let theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        let neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        let  theRegion:MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        self.myMapView.setRegion(theRegion, animated: true)
        
        let neuAnotation  = MKPointAnnotation()
        neuAnotation.coordinate = neuLocation
        neuAnotation.title = "มหาวิทยาลัยภาคตะวันออกเฉียงเหนือ"
        neuAnotation.subtitle = "จังหวัดขอนแก่น"
        
        self.myMapView.addAnnotation(neuAnotation)
        
        
        
        
        
        
        
        
        // ViewDidLoad
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

