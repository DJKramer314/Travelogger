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
			Color.accentColor
			
			VStack{
				Button(action:{
					appData.changeViewTo("HomePageView")
				}) {
					Image(systemName:"house.fill")
						.resizable()
						.frame(width:50,height:50)
					.foregroundColor(Color.white)
				}
				Spacer()
			}.padding(75)
			
			VStack(spacing: 50) {
				ZStack {
					RoundedRectangle(cornerRadius: 25)
						.foregroundColor(Color.white)
					Text("Test")
				}
				.frame(height:100)
				ZStack {
					RoundedRectangle(cornerRadius: 25)
						.foregroundColor(Color.white)
					Text("Test")
				}
				.frame(height:100)
			}
			.padding(50)
		}.edgesIgnoringSafeArea(.all)
    }
}
