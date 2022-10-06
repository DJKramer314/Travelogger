//
//  AppData.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import Foundation
import MapKit
import SwiftUI

//This is a class because we only need one instance of the object. Due to the nature of the data, it is useful to keep the data perpetuated throughout the program without re-making it.
class AppData: ObservableObject {
	@Published var currentView = "HomePageView"
	@Published var visits: [Visit]
	@Published var currentLocationViewModel: LocationViewModel
	@Published var startingLocation: CLLocation?
	@Published var primaryAppColor: Color?
	
	init() {
		self.visits = [Visit(locationName: "Denmark", coordinates: CLLocationCoordinate2D(latitude: 20, longitude: 10), collections: ["Country", "Cold"], attachmentStrings: [], notes: [Note(content: "This is the most gorgeous place that I have ever visited!")]), Visit(locationName: "New Zealand", coordinates: CLLocationCoordinate2D(latitude: 50, longitude: 20), collections: ["Country", "Warm"], attachmentStrings: [], notes: [Note(content: "This visit was very special -- we met a friend at the beach")])]
		self.currentLocationViewModel = LocationViewModel()
		self.primaryAppColor = Color.accentColor
		self.startingLocation = findUserLocation()
	}
	
	func newVisit(_ newVisit: Visit) {
		visits.append(newVisit)
	}
	
	func findUserLocation() -> CLLocation? {
		currentLocationViewModel.locationManager.requestWhenInUseAuthorization()
		return currentLocationViewModel.locationManager.location
	}
	
	func findAllCollections() -> [String] {
		var list: [String] = []
		for visit in visits {
			for collection in visit.collections {
				if !list.contains(collection!) {
					list.append(collection!)
				}
			}
		}
		return list
	}
	
	func changeViewTo(_ newView: String){
		currentView = newView
	}
}
