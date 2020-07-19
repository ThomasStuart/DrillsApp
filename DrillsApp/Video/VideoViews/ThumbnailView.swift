//
//  ThumbnailView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit

struct ThumbnailView: View {
    var url:String
    
    var body: some View {
        Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: url) ?? UIImage(imageLiteralResourceName: "noVideo") )
    }
}

func createThumbnailOfVideoFromRemoteUrl(url: String) -> UIImage? {
    let asset = AVAsset(url: URL(string: url)!)
    let assetImgGenerate = AVAssetImageGenerator(asset: asset)
    assetImgGenerate.appliesPreferredTrackTransform = true
    //Can set this to improve performance if target size is known before hand
    assetImgGenerate.maximumSize = CGSize(width:UIScreen.main.bounds.width-50,height: C.VID_HEIGHT)
    let time = CMTimeMakeWithSeconds(C.SECONDS_INTO_VIDEO, preferredTimescale: 600)
    do {
        let img = try assetImgGenerate.copyCGImage(at: time, actualTime: nil)
        let thumbnail = UIImage(cgImage: img)
        return thumbnail
    } catch {
      print(error.localizedDescription)
      return nil
    }
}

struct ThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailView(url: mySampleMovieLinkData[3])
    }
}
