//
//  ContentView.swift
//  Trekr
//
//  Created by Mayur Vaity on 11/08/24.
//

import SwiftUI

struct ContentView: View {
    //to create a new obj of locations (which will get data from json file)
    @StateObject var locations = Locations()
    
    var body: some View {
        TabView {
            DetailView(location: locations.primary)
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
            
            WorldView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            
            TipsView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
        }
        //adding environmentObject so that locations obj can be used anywhere within the tabview
        .environmentObject(locations)
    }
}

#Preview {
    ContentView()
}
