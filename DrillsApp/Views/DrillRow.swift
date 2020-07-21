//
//  DrillRow.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


/*   IMPORTANT NOTE:  The canvas times out because of this file. Not sure why at the moment.
        A long term solution would be to store a thumbnail in the JSON file.
 */


//  Drill row is responsible for displaying a thumbnail for a given video with a play button overlay over the top.
struct DrillRow: View {
    var drill: Drill
    
    var body: some View {
        Image("noVideo")
//        ThumbnailView(url: drill.videoURL ?? C.NO_VID_VAL)
//            .overlay(TitleOverlay(text: drill.title ), alignment: .bottomLeading)
//            .overlay( (Image(systemName: "play").resizable().frame(width: 32.0, height: 32.0)).foregroundColor(.white))
//         .frame(height: C.VID_HEIGHT)
    }
}

struct DrillRow_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        DrillRow(drill: drillData[2])
        DrillRow(drill: drillData[3])
      }
    }
}
