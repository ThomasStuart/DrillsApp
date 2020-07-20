//
//  Data.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI


var tempData:  [Drill]   = load("Drills.json")
var drillData: [Drill]   = reoloadWithStepCount(dd: tempData)


/* load is responsible for parsing the "Drills.json" to extract the data and
      put the data in the list tempData.
 */
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


/*  reoloadWithStepCount essentially copies over the data that has been stored in the tempData
      but ADDS the correct step count for each step.  This is important for th DrillDetail View.
      Cannot increment the step count inside of the view so this function is vital.  However
      it is innefficent beacuse it copies over the data and has to go through it again.
      I would change the json so that step numbers were included.
 */
func reoloadWithStepCount(dd: [Drill]) -> [Drill]{
    var r = dd //r stands for the return array
    for i in r.indices{
        //r[i].videoURL = mySampleMovieLinkData[i]  // TODO:: REMOVE THIS LINE ONCE PERMISSION IS GRANTED TO ACCESS LINKS
        for j in dd[i].steps.indices{
            r[i].steps[j].num = j+1
        }
    }
    return r
}
