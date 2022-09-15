//
//  LocationManager.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/15/22.
//

import SwiftUI
import MapKit
import CoreLocation

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
	@Published var authorizationStatus: CLAuthorizationStatus
	
	let locationManager: CLLocationManager
	
	override init() {
		locationManager = CLLocationManager()
		authorizationStatus = locationManager.authorizationStatus
		
		super.init()
		locationManager.delegate = self
		locationManager.desiredAccuracy = kCLLocationAccuracyBest
		locationManager.startUpdatingLocation()
	}
}
