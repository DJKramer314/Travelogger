//
//  CollectionsView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct CollectionsView: View {
	
	@EnvironmentObject var appData: AppData
	
	func delete(at offsets: IndexSet) {
		appData.visits.remove(atOffsets: offsets)
	}
	
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
				}.onDelete(perform: delete)
			}
		}
    }
}

struct CollectionsView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsView()
    }
}
