//
//  PlayerContainerView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


struct PlayerContainerView : View {
    
  private let player: AVPlayer
  var videoTitle:String?
  var url:String?
    
    init(player: AVPlayer, videoTitle: String, url:String) {
        self.player     = player
        self.videoTitle = videoTitle
        self.url        = url
    }
    
  var body: some View {
    VStack {
    
        if videoTitle == ""{
            VideoPlayer(player: player)
        }
        else{
            VideoPlayer(player: player)
                .overlay(ThumbnailView(url:  url ?? "")      )
                .overlay(TitleOverlay(text: videoTitle ?? ""), alignment: .bottomLeading)
        }
        PlayerControlsView(player: player)
    }
  }
    
}



struct PlayerContainerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerContainerView(player: AVPlayer(url: URL(string: mySampleMovieLinkData[0])!),  videoTitle: "Video title goes here", url: mySampleMovieLinkData[0])
    }
}
