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
