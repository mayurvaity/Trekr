//
//  TrekrApp.swift
//  Trekr
//
//  Created by Mayur Vaity on 11/08/24.
//

import SwiftUI

@main
struct TrekrApp: App {
    var body: some Scene {
        WindowGroup {
            //Locations().primary - to create a new obj of locations (which will get data from json file) and primary to get 1st element from that array 
            ContentView(location: Locations().primary)
        }
    }
}
