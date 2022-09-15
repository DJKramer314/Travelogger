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
	
	init() {
		self.visits = [Visit(locationName: "London", coordinates: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), collections: [], attachmentStrings: [], notes: [Note(content: "I have never been here")]),Visit(locationName: "Near London", coordinates: CLLocationCoordinate2D(latitude: 52.507222, longitude: -0.1275), collections: [], attachmentStrings: [], notes: [Note(content: "I am not sure where this goes")])]
	}
	
	func newVisit(_ newVisit: Visit) {
		visits.append(newVisit)
	}
	
	func changeViewTo(_ newView: String){
		currentView = newView
	}
}
