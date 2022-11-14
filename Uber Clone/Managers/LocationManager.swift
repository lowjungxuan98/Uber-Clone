//
//  LocationManager.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 14/11/2022.
//

import CoreLocation
import Foundation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()

    override init() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
