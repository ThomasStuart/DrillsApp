//
//  ContentView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


let mp4Data = ["https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4", "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"]

struct DrillListView: View {
        var body: some View {
            NavigationView {
                List(drillData) { drill in
                    NavigationLink(destination: DrillDetail(drill: drill)) {
                        DrillRow(drill: drill)
                    }
                }
                .navigationBarTitle(Text("Drills"))
            }
        }
  }


struct DrillListView_Previews: PreviewProvider {
    static var previews: some View {
        DrillListView()
    }
}



