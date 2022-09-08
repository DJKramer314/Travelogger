//
//  ContentView.swift
//  Shared
//
//  Created by Dylan on 9/7/22.
//

import SwiftUI

struct HomePageView: View {
    
    
    //Start of global variables
    let buttonSize: CGFloat = 45
    
    var body: some View {
        VStack {
            StatsBarView()
            
            Spacer()
            
            VStack(spacing: 30) {
                
                TopRowOfButtonsView(size: buttonSize).padding(buttonSize)
                
				LogButtonView(size: buttonSize+25)
                
                BottomRowOfButtonsView(size: buttonSize).padding(buttonSize)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}










struct StatsBarView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width:.infinity, height:150)
            HStack() {
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
}

struct TopRowOfButtonsView: View {
    
    let size: CGFloat
    
    var body: some View {
        HStack {
            
            Image(systemName: "location")
                .resizable()
                .frame(width: size, height: size)
        
            Spacer()
        
            Image(systemName: "clock")
                .resizable()
                .frame(width: size, height: size)
            
        }
    }
}

struct LogButtonView: View {
	
	let size: CGFloat
	
    var body: some View {
		Text("Log")
    }
}

struct BottomRowOfButtonsView: View {
    
    let size: CGFloat
    
    var body: some View {
        HStack {
            
            Image(systemName: "gearshape")
                .resizable()
                .frame(width: size, height: size)
        
            Spacer()
        
            Image(systemName: "questionmark.circle")
                .resizable()
                .frame(width: size, height: size)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
			.previewInterfaceOrientation(.portrait)
            
    }
}
