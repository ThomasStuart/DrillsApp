//
//  PlayerUIView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

class PlayerUIView: UIView {
  private let playerLayer = AVPlayerLayer()
  
    init(player: AVPlayer) {
      super.init(frame: .zero)
      playerLayer.player = player
      layer.addSublayer(playerLayer)
    }
    
  required init?(coder: NSCoder) {
   fatalError("init(coder:) has not been implemented")
  }
    
  override func layoutSubviews() {
    super.layoutSubviews()
    playerLayer.frame = bounds
  }
    
}

struct PlayerContainerView : View {
  private let player: AVPlayer
  init(player: AVPlayer) {
    self.player = player
  }
  var body: some View {
    VStack {
      PlayerView(player: player)
      PlayerControlsView(player: player)
    }
  }
}

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
