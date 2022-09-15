//
//  Visit.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/9/22.
//

import Foundation
import MapKit
import SwiftUI

struct Visit: Identifiable{
	
	let id = UUID()
	let locationName: String
	let coordinates: CLLocationCoordinate2D
	
	//This will be just the string name of the collection, to be interpreted only by a collection later
	let collections: [String?]
	let attachmentStrings: [String?]
	let notes: [Note]
	
}

struct Note: Identifiable {
	let id = UUID()
	let content: String
	let date = Date()
}
