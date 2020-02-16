//
//  MapViewController.swift
//  Menu
//
//  Created by Lucifer on 2/16/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var restarant: Menu!

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(restarant.location) { (placeMarks, error) in
            guard error == nil else { return }
            guard let placeMarks = placeMarks else { return }
            
            let placeMark = placeMarks.first!
            let annotation = MKPointAnnotation()
            annotation.title = self.restarant.name
            annotation.subtitle = self.restarant.type
            
            guard let location = placeMark.location else { return }
            annotation.coordinate = location.coordinate
            
            self.mapView.showAnnotations([annotation], animated: true)
            self.mapView.selectAnnotation(annotation, animated: true)
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
