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
			
			//At some point, this would be better automated with a 'try' loop and converting the currentView variable into actual code
			if appData.currentView == "HomePageView" {
				HomePageView().environmentObject(appData)
			} else if appData.currentView == "VisitSelectionView"{
				VisitSelectionView().environmentObject(appData)
			} else if appData.currentView == "SettingsView"{
				SettingsView().environmentObject(appData)
			} else if appData.currentView == "HelpView"{
				HelpView().environmentObject(appData)
			} else if appData.currentView == "DirectionsView"{
				DirectionsView().environmentObject(appData)
			} else if appData.currentView == "CollectionsView"{
				CollectionsView().environmentObject(appData)
			} else if appData.currentView == "LogNewVisitView"{
				LogNewVisitView().environmentObject(appData)
			} else if appData.currentView == "LogExistingVisitView"{
				LogExistingVisitView().environmentObject(appData)
			} else {
				Text("Page not found: " + appData.currentView)
			}
        }
    }
}
