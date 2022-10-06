//
//  CollectionsView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI



struct DirectionsView: View {
	
	@EnvironmentObject var appData: AppData
	
	func delete(at offsets: IndexSet) {
		appData.visits.remove(atOffsets: offsets)
	}
	
	var body: some View {
		HomeButtonView(appData: appData, color: appData.primaryAppColor)
		NavigationView {
			List {
				ForEach(appData.visits, id: \.self.id) { visit in
					Button(action:{
						//The below code opens the apple 'maps' app and navigates to the coordinates of the visit
						let url = URL(string: "maps://?saddr=&daddr=\(visit.coordinates.latitude),\(visit.coordinates.longitude)")
						if UIApplication.shared.canOpenURL(url!) {
							//It is safe to force unwrap here because it has already been checked above.
							UIApplication.shared.open(url!, options: [:], completionHandler: nil)
						}
					}) {
						Text(visit.locationName)
					}
				}.onDelete(perform: delete)
			}
			
		}
	}
}

struct DirectionsView_Previews: PreviewProvider {
	static var previews: some View {
		DirectionsView()
	}
}
