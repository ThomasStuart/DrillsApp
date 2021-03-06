//
//  Drill.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI

/*
   Drill is an data object that will hold data in the JSON file.
        Each element in the JSON file is a Drill object.
 
 */
struct Drill: Decodable, Identifiable {
    var id: Int
    var title: String
    var targets: [target]
    var benefits: [benefit]
    var steps: [step]
    var videoURL: String? = ""
}


struct target: Decodable {
    let id = UUID()
    let name: String? 

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}


struct benefit: Decodable {
    let id = UUID()
    let name: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}


struct step: Decodable {
    let id = UUID()
    let name: String?
    var num = Int()
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}
