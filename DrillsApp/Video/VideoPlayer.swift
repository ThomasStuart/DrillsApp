//
//  VideoPlayer.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

struct VideoPlayer : UIViewControllerRepresentable {
    
    var player:AVPlayer
//    var text: CATextLayer
    
    init(player: AVPlayer) {
        self.player = player
//        self.text   = CATextLayer()
//        text.string = "test"
//        text.foregroundColor = UIColor.green.cgColor
     }
     
    func makeUIViewController(context: UIViewControllerRepresentableContext<VideoPlayer>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.videoGravity = .resize
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<VideoPlayer>) {

    }
}
