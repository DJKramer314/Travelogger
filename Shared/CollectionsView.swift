//
//  CollectionsView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct CollectionsView: View {
	
	@EnvironmentObject var appData: AppData
	
    var body: some View {
		HomeButtonView(appData: appData, color: .accentColor)
        Text("Collections View Placeholder")
    }
}

struct CollectionsView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsView()
    }
}
