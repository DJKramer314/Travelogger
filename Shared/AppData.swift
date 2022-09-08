//
//  AppData.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import Foundation


//This is a class because we only need one instance of the object. Due to the nature of the data, it is useful to keep the data perpetuated throughout the program without re-making it.
class AppData: ObservableObject {
	@Published var currentView = "HomePageView"
	
	func changeViewTo(_ newView: String){
		currentView = newView
	}
}
