//
//  ContentView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

struct DrillDetail: View {
    var drill: Drill
    
    var body: some View {
        
        //Start Targets VStack
         VStack {
            Text("Targets:")
                .font(.title)

            ForEach(drill.targets, id: \.id){ s in
                Text( s.name ?? "")
                    .font(.subheadline)
            }
        }//end Vstack Targets
        
    }
}

struct DrillDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrillDetail(drill: drillData[0])
    }
}

