//
//  Drill.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI


struct Drill: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var targets: [String]
    var benifits: [String]
    var steps: [String]
    fileprivate var videoURL: String
}
