//
//  ContentView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

class StepNumber: ObservableObject {
    @State var num:Int = 1
    
    func increment(){
        self.num += 1
    }
}


struct DrillDetail: View {
    var drill: Drill
    
    var body: some View {
        
         VStack {
            
            Text(drill.title)
                .font(.title)
            
        
            Text(drill.videoURL ?? "no data")
            
             VStack{
                PlayerContainerView(player: AVPlayer(url: URL(string: mp4Data[0])!), videoTitle: "")
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
            
            VStack{
                Text("Steps:")
                    .font(.title)

                ForEach(drill.steps, id: \.id){ s in
                    StepView(number: s.num, text: s.name ?? "")
                }
            }
        }
    }
    
    func makeView(text:String) -> StepView {
        return  StepView(number: 1, text: text)
    }
    
}

struct DrillDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrillDetail(drill: drillData[1])
    }
}

