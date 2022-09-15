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
		HomeButtonView(appData: appData, color: .accentColor)
		Text("Log Existing Visit View Placeholder")
	}
}

struct LogExistingVisitView_Previews: PreviewProvider {
    static var previews: some View {
        LogExistingVisitView()
    }
}
