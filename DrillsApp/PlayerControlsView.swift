//
//  PlayerControlsView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

struct PlayerControlsView : View {
  @State var playerPaused = true
  let player: AVPlayer
  var body: some View {
    Button(action: {
      self.playerPaused.toggle()
      if self.playerPaused {
        self.player.pause()
      }
      else {
        self.player.play()
      }
    }) {
      Image(systemName: playerPaused ? "play" : "pause")
    }
    
  }
}
