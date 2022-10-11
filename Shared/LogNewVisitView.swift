//
//  LogNewVisitView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/9/22.
//

import SwiftUI
import MapKit

struct LogNewVisitView: View {
	
	@EnvironmentObject var appData: AppData
	@State var name: String = ""
	@State var latitude: String = ""
	@State var longitude: String = ""
	@State var note: String = ""
	@State var status: String = ""
	
	func submitButtonPressed() {
		appData.newVisit(Visit(locationName: name, coordinates: CLLocationCoordinate2D(latitude: Double(latitude)!, longitude: Double(longitude)!), collections: [], attachmentStrings: [], notes: [Note(content: note)]))
		appData.currentView = "HomePageView"
	}
	
    var body: some View {
		VStack {
			
			HStack {
				HomeButtonView(appData: appData, color: appData.primaryAppColor)
			}
			
			NavigationView() {
				Form {
					Section(content: {
						TextField("Name", text: $name)
						HStack {
							TextField("Latitude", text: $latitude)
							TextField("Longitude", text: $longitude)
							Button(action: {
								appData.currentLocationViewModel.locationManager.requestWhenInUseAuthorization()
								let currentLocation = appData.currentLocationViewModel.locationManager.location
								latitude = String(currentLocation!.coordinate.latitude)
								longitude = String(currentLocation!.coordinate.longitude)
							}) {
								Image(systemName: "location.fill")
									.foregroundColor(Color.blue)
							}
						}
					}, header: {
						Text("Log New Location")
					})
					Section(content: {
						TextEditor(text: $note)
					}, header: {
						Text("Comments/Notes")
					})
					Section(content: {
						Button("Save Changes") {
							if Double(latitude) != nil && Double(longitude) != nil {
								if name != "" {
									submitButtonPressed()
								} else {
									status = "Invalid name"
								}
								
							} else {
								status = "Invalid latitude and longitude"
							}
						}
					}, header: {
						Text(status)
							.foregroundColor(.red)
					})
					
				}
			}
		}
		
    }
}
