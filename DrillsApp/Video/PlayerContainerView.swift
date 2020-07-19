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

struct ThumbnailOverlay: View {
    var url:String
    
    var body: some View {
        //ZStack {
            Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: url) ?? UIImage(imageLiteralResourceName: "noVideo") )
        //}
    }
}
func createThumbnailOfVideoFromRemoteUrl(url: String) -> UIImage? {
    let asset = AVAsset(url: URL(string: url)!)
    let assetImgGenerate = AVAssetImageGenerator(asset: asset)
    assetImgGenerate.appliesPreferredTrackTransform = true
    //Can set this to improve performance if target size is known before hand
    assetImgGenerate.maximumSize = CGSize(width:UIScreen.main.bounds.width-50,height:(UIScreen.main.bounds.height / 3.50))
    let time = CMTimeMakeWithSeconds(4.0, preferredTimescale: 600)
    do {
        let img = try assetImgGenerate.copyCGImage(at: time, actualTime: nil)
        let thumbnail = UIImage(cgImage: img)
        return thumbnail
    } catch {
      print(error.localizedDescription)
      return nil
    }
}



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
                .overlay(ThumbnailOverlay(url:  url ?? "")      )
                .overlay(TilteOverlay(text: videoTitle ?? ""), alignment: .bottomLeading)
        }
        PlayerControlsView(player: player)
    }
  }
    
}



struct PlayerContainerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerContainerView(player: AVPlayer(url: URL(string: mp4Data[0])!),  videoTitle: "Video title goes here", url: mp4Data[0])
    }
}
