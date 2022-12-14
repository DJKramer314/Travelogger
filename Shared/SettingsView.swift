//
//  SettingsView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct SettingsView: View {
	
	@EnvironmentObject var appData: AppData
	
    var body: some View {
		VStack {
			HomeButtonView(appData: appData, color: appData.primaryAppColor)
			
			NavigationView {
				List {
					NavigationLink(destination: {
						ColorsView().environmentObject(appData)
					}) {
						Text("App Color")
					}
				}
			}
			Spacer()
		}
		
    }
}

struct ColorsView: View {
	
	@EnvironmentObject var appData: AppData
	
	let buttonSize: CGFloat = 75
	let buttonCornerRadius: CGFloat = 25
	
	let colors: [[Color?]] =//Color Palette #1, Green
							[[Color(red: 72/255, green: 56/255, blue: 56/255),
							Color(red: 66/255, green: 133/255, blue: 91/255),
							Color(red: 144/255, green: 183/255, blue: 125/255),
							Color(red: 210/255, green: 215/255, blue: 159/255)],
							//Color Palette #2, Purple
							[Color(red: 76/255, green: 0/255, blue: 51/255),
							Color(red: 121/255, green: 2/255, blue: 82/255),
							Color(red: 175/255, green: 1/255, blue: 113/255),
							Color(red: 232/255, green: 15/255, blue: 136/255)],
							//Color Palette #3, Purple
							[Color(red: 76/255, green: 0/255, blue: 51/255),
							Color(red: 121/255, green: 2/255, blue: 82/255),
							Color(red: 175/255, green: 1/255, blue: 113/255),
							Color(red: 232/255, green: 15/255, blue: 136/255)]]
	
	var body: some View {
		VStack() {
			ForEach(colors, id:\.self) { row in
				HStack {
					ForEach(row, id: \.self) { color in
						Button(action: {
							appData.primaryAppColor = color
						}) {
							RoundedRectangle(cornerRadius: buttonCornerRadius)
								.frame(width: buttonSize, height: buttonSize)
								.foregroundColor(color == appData.primaryAppColor ? Color(UIColor.systemBackground) : color)
							
						}
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
