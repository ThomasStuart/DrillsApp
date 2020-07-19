//
//  DrillRow.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

struct DrillRow: View {
    var drill: Drill
    
    var body: some View {
        HStack{
            
             VStack{
                PlayerContainerView(player: AVPlayer(url: URL(string: drill.videoURL ?? "")!), videoTitle: drill.title, url: drill.videoURL ?? "")
             }
            .frame(height: UIScreen.main.bounds.height / 3.5)
        }
    }
}

struct DrillRow_Previews: PreviewProvider {
    static var previews: some View {
    
      Group {
        DrillRow(drill: drillData[0])
        DrillRow(drill: drillData[1])
      }
        .previewLayout(.fixed(width:300, height:400))
    }
}
