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
        
        List{
             VStack {
                
                Text(drill.title)
                    .font(.title)
                            
                 VStack{
                    if drill.videoURL == nil{
                        Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: drill.videoURL ?? "") ?? UIImage(imageLiteralResourceName: "noVideo") )
                    }
                    else{
                     PlayerContainerView(player: AVPlayer(url: URL(string: drill.videoURL ?? "")!), videoTitle: "",url: drill.videoURL ?? "")
                   }
                 }
                 .frame(height: C.VID_HEIGHT)
                
                
                VStack{
                    Text("Benefits:")
                        .font(.title)

                    ForEach(drill.benefits, id: \.id){ s in
                        Text( s.name ?? "")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                    .frame(height: 50)
                
                //spacing setting adjust spacing between Stack elements
                VStack(spacing: 20){
                    Text("Steps:")
                        .font(.title)

                    ForEach(drill.steps, id: \.id){ s in
                        StepView(number: s.num, text: s.name ?? "")
                    }
                }
            }
        }
    }
    
}

struct DrillDetail_Previews: PreviewProvider {
    static var previews: some View {
       DrillDetail(drill: drillData[2])
//        Group{
//            DrillDetail(drill: drillData[1])
//            DrillDetail(drill: drillData[2])
//            DrillDetail(drill: drillData[3])
//            DrillDetail(drill: drillData[4])
//        }
    }
}

