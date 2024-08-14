//
//  TipsView.swift
//  Trekr
//
//  Created by Mayur Vaity on 15/08/24.
//

import SwiftUI

struct TipsView: View {
    //obj to keep tips data
    let tips: [Tip]
    
    //to load data from tips.json file into abv array as soon as this view is called
    init() {
        //creating url for tips file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        //getting data from tips json file using url
        let data = try! Data(contentsOf: url)
        
        //converting from Data format to Tip format
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        NavigationStack {
            //id: \.text - to avoid declaring it identifiable, we r specifying unique prop from the model
            //children - to form children wherever children data is available
            List(tips, id: \.text, children: \.children) { tip in
                //to show label when tip has children (i.e., this tip obj is a question)
                if tip.children != nil {
                    Label(tip.text, systemImage: "quote.bubble")
                        .font(.headline)
                } else {
                    //if the Tip obj does not have anychildren to show as just text 
                    Text(tip.text)
                }
            }
            .navigationTitle("Tips")
        }
        
    }
}

#Preview {
    TipsView()
}
