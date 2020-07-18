//
//  Drill.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI


struct Drill: Decodable {
    var id: Int
    var title: String
    var targets: [target]
    var benefits: [benefit]
    var steps: [step]
    var videoURL: String?
}


struct target: Decodable {
    let id = UUID()
    let name: String? 

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}


struct benefit: Decodable {
    let name: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}


struct step: Decodable {
    let name: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}
