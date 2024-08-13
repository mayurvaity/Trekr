//
//  Locations.swift
//  Trekr
//
//  Created by Mayur Vaity on 12/08/24.
//

import Foundation

class Locations: ObservableObject {
    //array obj to keep Location objs
    let places: [Location]
    
    //creating a var to get 1st element of the array 
    var primary: Location {
        places[0]
    }
    
    init() {
        //creating url to access json file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        //getting data from json file in format "Data"
        let data = try! Data(contentsOf: url)
        
        //decode data from obj "data" into Location array
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
