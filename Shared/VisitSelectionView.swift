//
//  SwiftUIView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/8/22.
//

import SwiftUI

struct VisitSelectionView: View {
	
	@EnvironmentObject var appData: AppData
	
    var body: some View {
		ZStack{
			appData.primaryAppColor.edgesIgnoringSafeArea(.all)
			
			VStack{
				HStack {
					HomeButtonView(appData: appData, color: .white)
				}
				Spacer()
			}
			
			VStack(spacing: 50) {
				Button(action:{appData.changeViewTo("LogNewVisitView")}) {
					ZStack {
						RoundedRectangle(cornerRadius: 25)
							.foregroundColor(Color.white)
						Text("Log a visit in a new location")
					}
				}
				.frame(height:100)
				
				Button(action:{appData.changeViewTo("LogExistingVisitView")}) {
					ZStack {
						RoundedRectangle(cornerRadius: 25)
							.foregroundColor(Color.white)
						Text("Log a visit in an existing location")
					}
				}
				.frame(height:100)
			}
		}
    }
}
