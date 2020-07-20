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
        ThumbnailView(url: drill.videoURL ?? C.NO_VID_VAL)
            .overlay(TitleOverlay(text: drill.title ), alignment: .bottomLeading)
            .overlay( (Image(systemName: "play").resizable().frame(width: 32.0, height: 32.0)).foregroundColor(.white))
         .frame(height: C.VID_HEIGHT)
    }
}

struct DrillRow_Previews: PreviewProvider {
    static var previews: some View {
    
      Group {
        DrillRow(drill: drillData[2])
        DrillRow(drill: drillData[3])
      }
       // .previewLayout(.fixed(width:300, height:400))
    }
}
