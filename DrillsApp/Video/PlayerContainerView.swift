//
//  PlayerContainerView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


struct TilteOverlay: View {
    var text:String
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}


struct PlayerContainerView : View {
    
  private let player: AVPlayer
  var videoTitle:String?
    
    init(player: AVPlayer, videoTitle: String) {
        self.player     = player
        self.videoTitle = videoTitle
    }
    
  var body: some View {
    VStack {
    
        if videoTitle == ""{
            VideoPlayer(player: player)
        }
        else{
            VideoPlayer(player: player)
                .overlay(TilteOverlay(text: videoTitle ?? ""), alignment: .bottomLeading)
        }
        PlayerControlsView(player: player)
    }
  }
    
}



struct PlayerContainerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerContainerView(player: AVPlayer(url: URL(string: mp4Data[0])!),  videoTitle: "Video title goes here")
    }
}
