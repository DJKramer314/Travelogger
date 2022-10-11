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
						VisitView(visitData: visit)})
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
