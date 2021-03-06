//
//  ViewController.swift
//  GlobalImpactApp
//
//  Created by Durham, Zachary on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    @IBOutlet weak var MapView: MKMapView!
    @IBAction func Button(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 45.4215, longitude: -75.6972)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 1.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        MapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations: { self.setRegion(zoomRegion, animated: true)}, completion: nil)
    }
}
