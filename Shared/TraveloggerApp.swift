//
//  TraveloggerApp.swift
//  Shared
//
//  Created by Dylan on 9/7/22.
//

import SwiftUI

@main
struct TraveloggerApp: App {
	@StateObject var appData = AppData()
    var body: some Scene {
        WindowGroup {
			if appData.currentView == "HomePageView" {
				HomePageView().environmentObject(appData)
			} else if appData.currentView == "VisitSelectionView"{
				VisitSelectionView().environmentObject(appData)
			} else {
				Text("Page not found: " + appData.currentView)
			}
        }
    }
}
