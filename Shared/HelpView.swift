//
//  HelpView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct HelpView: View {
	
	@EnvironmentObject var appData: AppData
	
    var body: some View {
		HomeButtonView(appData: appData, color: .accentColor)
		Text("Help View Placeholder")
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
