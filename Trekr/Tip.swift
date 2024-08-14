//
//  Tip.swift
//  Trekr
//
//  Created by Mayur Vaity on 15/08/24.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]? 
}
