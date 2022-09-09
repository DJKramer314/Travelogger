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
				HStack {
					Spacer()
					
					Button(action:{
						appData.changeViewTo("HomePageView")
					}) {
						Image(systemName:"house.fill")
							.resizable()
							.frame(width:35,height:35)
						.foregroundColor(Color.white)
					}
				}
				Spacer()
			}.padding(.top, 50).padding(.trailing, 25)
			
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
