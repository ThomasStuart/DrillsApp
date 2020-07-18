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

struct ContentView: View {

        var body: some View {
             VStack{
                PlayerContainerView(player: AVPlayer(url: URL(string: mp4Data[1])!))
             }
            .frame(height: UIScreen.main.bounds.height / 3.5)

        }
  }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



