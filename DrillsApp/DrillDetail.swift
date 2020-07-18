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
        
         VStack {
            
            VStack{
                HStack{
                Text("Targets:")
                    .font(.headline)

                ForEach(drill.targets, id: \.id){ s in
                    Text( s.name ?? "")
                        .font(.caption)
                }
                }
            }
        
             VStack{
                 VideoPlayer(player: AVPlayer(url: URL(string: mp4Data[0])!))
                 
             }
            .frame(height: UIScreen.main.bounds.height / 3.5)
            
            
            VStack{
                Text("Benefits:")
                    .font(.title)

                ForEach(drill.benefits, id: \.id){ s in
                    Text( s.name ?? "")
                        .font(.subheadline)
                }
            }
            
        }
    }
    
}

struct DrillDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrillDetail(drill: drillData[0])
    }
}

