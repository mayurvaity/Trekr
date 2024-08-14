//
//  DetailView.swift
//  Trekr
//
//  Created by Mayur Vaity on 15/08/24.
//

import SwiftUI

struct DetailView: View {
    let location: Location
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                
                Text(location.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text(location.country)
                    .font(.title)
                    .foregroundStyle(.secondary)
                
                Text(location.description)
                    .padding(.horizontal)
                
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                
                Text(location.more)
                    .padding(.horizontal)
            }
            .navigationTitle("Discover")
        }
    }
}

#Preview {
    DetailView(location: Locations().primary)
}
