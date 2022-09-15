//
//  AppData.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import Foundation
import MapKit


//This is a class because we only need one instance of the object. Due to the nature of the data, it is useful to keep the data perpetuated throughout the program without re-making it.
class AppData: ObservableObject {
	@Published var currentView = "HomePageView"
	@Published var visits: [Visit]
	@Published var currentLocationViewModel: LocationViewModel
	@Published var startingLocation: CLLocation?
	
	init() {
		self.visits = []
		self.currentLocationViewModel = LocationViewModel()
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
