//
//  SettingsView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct SettingsView: View {
	
	@EnvironmentObject var appData: AppData
	let colors: [Color?] = [Color(red: 72/255, green: 56/255, blue: 56/255),
							Color(red: 66/255, green: 133/255, blue: 91/255),
							Color(red: 144/255, green: 183/255, blue: 125/255),
							Color(red: 210/255, green: 215/255, blue: 159/255)]
	
    var body: some View {
		VStack {
			HomeButtonView(appData: appData, color: appData.primaryAppColor)
			LazyHGrid(rows: [GridItem(.flexible())], alignment: .center, spacing: 20) {
				ForEach(colors, id:\.self) { color in
					Button(action: {
						appData.primaryAppColor = color
					}) {
						RoundedRectangle(cornerRadius: 10).frame(width: 50, height: 50)
							.foregroundColor(color)
					}
				}
			}
			Spacer()
		}
		
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
