//
//  WorldView.swift
//  Trekr
//
//  Created by Mayur Vaity on 13/08/24.
//

import MapKit
import SwiftUI

struct WorldView: View {
    //starting region for map
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222,
                                       longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        //map vw, centered on abv region location 
        Map(coordinateRegion: $region)
            .navigationTitle("Locations")
    }
}

#Preview {
    WorldView()
}
