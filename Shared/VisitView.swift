//
//  VisitView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/15/22.
//

import SwiftUI
import MapKit

struct VisitView: View {
	
	var visitData: Visit
	
    var body: some View {
		Text("This is the display for the visit named " + visitData.locationName)
		Text("User comments: ")
		ForEach(visitData.notes) { note in
			Text ("- " + note.content)
		}
    }
}

struct VisitView_Previews: PreviewProvider {
    static var previews: some View {
		VisitView(visitData: Visit(locationName: "Denmark", coordinates: CLLocationCoordinate2D(latitude: 20, longitude: 10), collections: ["Country", "Cold"], attachmentStrings: [], notes: [Note(content: "This is the most gorgeous place that I have ever visited!")]))
    }
}
