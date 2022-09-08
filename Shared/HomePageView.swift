//
//  ContentView.swift
//  Shared
//
//  Created by Dylan on 9/7/22.
//

import SwiftUI
import MapKit

struct HomePageView: View {
	//This below variable is a state variable because it binds to the view when it moves. It will reset itself after each relaunch of the app
    @State var coordinates = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
	
	//Inherited from 'TraveloggerApp'
	@EnvironmentObject var appData: AppData
    
    //Start of global variables
    let buttonSize: CGFloat = 35
	let topBarHeight: CGFloat = 120
	let bottomPadding: CGFloat = 40
    
    var body: some View {
		ZStack {
			
			Map(coordinateRegion: $coordinates)
			
			VStack {
				StatsBarView(topBarHeight: topBarHeight)
				
				Spacer()
				
				VStack(spacing: 30) {
					
					LogButtonView(size: buttonSize+25, appData: appData)
					
					BottomRowOfButtonsView(size: buttonSize)
					
				}
				.padding(bottomPadding)
				.foregroundColor(Color.accentColor)
			}
		}
		.edgesIgnoringSafeArea(.all)
    }
}










struct StatsBarView: View {
	
	var topBarHeight: CGFloat
	
    var body: some View {
        ZStack {
			
			Rectangle()
				.foregroundColor(Color.accentColor)
			VStack {
				Spacer()
				HStack {
					VStack {
						Text("Locations")
						Text("15")
					}
					Spacer()
					
					VStack {
						Text("Misc")
						Text("8")
					}
					
					Spacer()
					
					VStack {
						Text("Countries")
						Text("3")
					}
				}
				.padding()
				.foregroundColor(Color.white)
			}
        }
		.frame(height:topBarHeight)
    }
}

struct LogButtonView: View {
	
	let size: CGFloat
	var appData: AppData
	
    var body: some View {
		Button(action: {
			appData.changeViewTo("VisitSelectionView")
		}){
			ZStack {
				RoundedRectangle(cornerRadius: 25)
					.frame(height:size)
				Text("Log new visit")
					.foregroundColor(Color.white)
			}
		}
    }
}

struct BottomRowOfButtonsView: View {
    
    let size: CGFloat
    
    var body: some View {
        HStack {
			
			Image(systemName: "questionmark.circle.fill")
				.resizable()
				.frame(width: size, height: size)
            
			Spacer()
			
            Image(systemName: "gearshape.fill")
                .resizable()
                .frame(width: size, height: size)
        
            Spacer()
			
			Image(systemName: "location.fill")
				.resizable()
				.frame(width: size, height: size)
		
			Spacer()
		
			Image(systemName: "clock.fill")
				.resizable()
				.frame(width: size, height: size)
            
        }
		.padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		HomePageView()
			.preferredColorScheme(.light)
			.previewInterfaceOrientation(.portrait)
            
    }
}



