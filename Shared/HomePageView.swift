//
//  ContentView.swift
//  Shared
//
//  Created by Dylan on 9/7/22.
//

import SwiftUI
import MapKit

struct HomePageView: View {
	
	//Inherited from 'TraveloggerApp'
	@EnvironmentObject var appData: AppData
	
	//This below variable is a state variable because it binds to the view when it moves. It will reset itself after each relaunch of the app
	@State var coordinates = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50))
	
    //Start of global variables
    let buttonSize: CGFloat = 35
	let topBarHeight: CGFloat = 120
	let bottomPadding: CGFloat = 40
    
    var body: some View {
		ZStack {
			
			Map(coordinateRegion: $coordinates, showsUserLocation: true, annotationItems: appData.visits) { visit in
				MapAnnotation(coordinate:visit.coordinates) {
					Image(systemName: "figure.wave")
						.resizable()
						.frame(width:25, height: 50)
						.foregroundColor(.black)
				}
			}
			
			VStack {
				VStack {
					StatsBarView(topBarHeight: topBarHeight, appData: appData)
					HStack {
						Spacer()
						Button(action: {
							coordinates.center.latitude = appData.findUserLocation()!.coordinate.latitude
							coordinates.center.longitude = appData.findUserLocation()!.coordinate.longitude
						}) {
							Image(systemName: "location.magnifyingglass")
								.resizable()
								.frame(width:40,height:40)
								.foregroundColor(.blue)
								.padding()
						}
					}
				}
				
				Spacer()
				
				VStack(spacing: 30) {
					
					LogButtonView(size: buttonSize+25, appData: appData)
					
					BottomRowOfButtonsView(size: buttonSize, appData: appData)
					
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
	
	let appData: AppData
	
    var body: some View {
        ZStack {
			
			Rectangle()
				.foregroundColor(Color.accentColor)
			VStack {
				Spacer()
				HStack {
					VStack {
						Text("Locations")
						Text(String((appData.visits.count)))
					}
					Spacer()
					
					VStack {
						Text("Total Visits")
						Text(String((appData.visits.count)))
					}
					
					Spacer()
					
					VStack {
						Text("Countries")
						Text("TBD")
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
	let appData: AppData
    
    var body: some View {
        HStack {
			Button(action:{appData.changeViewTo("HelpView")}) {
				Image(systemName: "questionmark.circle.fill")
					.resizable()
					.frame(width: size, height: size)
			}
			
            
			Spacer()
			Button(action:{appData.changeViewTo("SettingsView")}) {
				Image(systemName: "gearshape.fill")
					.resizable()
					.frame(width: size, height: size)
			}
        
            Spacer()
			Button(action:{appData.changeViewTo("DirectionsView")}) {
				
				Image(systemName: "location.fill")
					.resizable()
					.frame(width: size, height: size)
				
			}
		
			Spacer()
			Button(action:{appData.changeViewTo("CollectionsView")}) {
				
				Image(systemName: "clock.fill")
				 .resizable()
				 .frame(width: size, height: size)
				
			}
            
        }
		.padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		HomePageView()
			.environmentObject(AppData())
			.preferredColorScheme(.light)
			.previewInterfaceOrientation(.portrait)
            
    }
}



