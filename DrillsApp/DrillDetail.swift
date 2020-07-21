//
//  ContentView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


/*
 DrillDetail is the most important page in the app.  It displays all the properties of a Drill object
 */
struct DrillDetail: View {
    var drill: Drill
    
    var body: some View {
              
        List{ // this allows the view to be scrollable vertically
    
             VStack { // this encapsulates all of the drill data verticall as a stack.
                    // essentially Sections off the properties of the drill data and allows for customization

                // SECTION 1: Drill title
                Text(drill.title)
                    .font(.title)            // changes the font of the title
                    .foregroundColor(.white) // changes the text color
                 // END SECTION 1
                
                // SECTION 2: DRILL VIDEO
                VStack{ // needs to be in a VStack or else the video is crushed to a really small size.
                    
                    // if there was no video in the JSON, defualt to no video image
                    if drill.videoURL == nil{
                        Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: drill.videoURL ?? "") ?? UIImage(imageLiteralResourceName: "noVideo") )
                    }
                    else{
                        VideoPlayerContainerView(url: URL(string: drill.videoURL ?? "")! )
                   }
                 }
                 .frame(height: C.VID_HEIGHT)
                // END SECTION 2
                
                Spacer()
                    .frame(height:25)
                
                // SECTION 3: Benefits title and bullet points
                VStack(alignment: .leading ){
                    Text("Benefits:")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Divider()
                    
                    ForEach(drill.benefits, id: \.id){ s in
                        BenefitView(text: s.name ?? "")
                    }
                }
                // END SECTION 3
                
                Spacer()
                    .frame(height: 50)
                
                
                //SECTION 4: Steps title and step text
                VStack(spacing: 0){//spacing setting adjust spacing between Stack elements
                    Text("Steps:")
                        .font(.title)
                        .foregroundColor(.white)

                    ForEach(drill.steps, id: \.id){ s in
                        StepView(number: s.num, text: s.name ?? "")
                    }
                }.overlay(RoundedRectangle(cornerRadius: 16).stroke(color.darkGray, lineWidth: 2)).background(RoundedRectangle(cornerRadius: 16).fill( color.darkGray ))
               //END SECTION 4
                
            }
             .listRowBackground(color.darkBlue.opacity(0.40)).edgesIgnoringSafeArea(.all)
        }
        .background(color.darkBlue.opacity(0.40))
    }
    
}

struct DrillDetail_Previews: PreviewProvider {
    static var previews: some View {
       //DrillDetail(drill: drillData[2])
        Group{
            DrillDetail(drill: drillData[1])
            DrillDetail(drill: drillData[2])
            DrillDetail(drill: drillData[3])
            DrillDetail(drill: drillData[4])
        }
    }
}

