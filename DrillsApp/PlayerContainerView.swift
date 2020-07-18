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
  init(player: AVPlayer) {
    self.player = player
  }
  var body: some View {
    VStack {
      VideoPlayer(player: player)
      PlayerControlsView(player: player)
    }
  }
}


