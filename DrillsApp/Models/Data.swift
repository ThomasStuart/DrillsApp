//
//  Data.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI


var tempData:  [Drill]   = load("Drills.json")
var drillData: [Drill]  = setStepNums(dd: tempData)

func setStepNums(dd: [Drill]) -> [Drill]{
    var r = dd
    for i in r.indices{
        print(r[i].videoURL)
        r[i].videoURL = mySampleMovieLinkData[i]
        print(r[i].videoURL)
        for j in dd[i].steps.indices{
            r[i].steps[j].num = j+1
        }
    }
    return r
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
