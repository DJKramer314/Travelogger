//
//  HomeFooterView.swift
//  Travelogger (iOS)
//
//  Created by Dylan on 9/15/22.
//

import SwiftUI

struct HomeButtonView: View {
	
	let appData: AppData
	let color: Color?
	
    var body: some View {
		Button(action:{
			appData.changeViewTo("HomePageView")
		}) {
			Image(systemName:"house.fill")
				.resizable()
				.frame(width:35,height:35)
			.foregroundColor(color)
		}
    }
}
