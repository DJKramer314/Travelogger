//
//  NavigationView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct DirectionsView: View {
	
	@EnvironmentObject var appData: AppData
	
    var body: some View {
		HomeButtonView(appData: appData, color: .accentColor)
		Text("Directions View Placeholder")
    }
}

struct DirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView()
    }
}
