//
//  LogExistingVisitView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/15/22.
//

import SwiftUI

struct LogExistingVisitView: View {
	@EnvironmentObject var appData: AppData
	
	var body: some View {
		HomeButtonView(appData: appData, color: appData.primaryAppColor)
		NavigationView {
			List {
				ForEach(appData.visits, id: \.self.id) { visit in
					NavigationLink(destination: {
						//A view to log a visit to an existing location
						Text("Work in progress")})
					{
						Text(visit.locationName)
					}
				}
			}
		}
	}
}

struct LogExistingVisitView_Previews: PreviewProvider {
    static var previews: some View {
        LogExistingVisitView()
    }
}
