//
//  WorldView.swift
//  Trekr
//
//  Created by Mayur Vaity on 13/08/24.
//

import MapKit
import SwiftUI

struct WorldView: View {
    //to access environmentobj which was passed to the tabview 
    @EnvironmentObject var locations: Locations
    
    //starting region for map
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222,
                                       longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        NavigationStack {
            //coordinateRegion - map vw, centered on abv region location
            //annotationItems - also adding all the coordinates from locations array on the map with a pin of country flag
            Map(coordinateRegion: $region, annotationItems: locations.places) {
                location in
                //to create pins on map of shape of these countries flags
                MapAnnotation(coordinate: CLLocationCoordinate2D(
                    latitude: location.latitude,
                    longitude: location.longitude)) {
                        //NavigationLink - to open DetailView vw with this location, by tapping on below Image vw
                        NavigationLink(destination: DetailView(location: location)) {
                            Image(location.country)
                                .resizable()
                                .clipShape(.rect(cornerRadius: 10))
                                .frame(width: 80, height: 40)
                                .shadow(radius: 3)
                        }
                    }
            }
                .navigationTitle("Locations")
        }
    }
}

#Preview {
    WorldView()
}
