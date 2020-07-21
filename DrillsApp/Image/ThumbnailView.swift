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
    
    // Case where there is no video for the Drill
    if url == C.NO_VID_VAL  ||  !verifyUrl(urlString: url) {
        // return a thumbnail with no video png
        return UIImage(imageLiteralResourceName: "noVideo")
    }
    
    
    let asset = AVAsset(url: URL(string: url)!)
    let assetImgGenerate = AVAssetImageGenerator(asset: asset)
    assetImgGenerate.appliesPreferredTrackTransform = true
    
    //Can set this to improve performance if target size is known before hand
    assetImgGenerate.maximumSize = CGSize(width:UIScreen.main.bounds.width-50,height: C.VID_HEIGHT)
    
    // Take a screenshot of the video at C.SECONDS into the video
    let time = CMTimeMakeWithSeconds(C.SECONDS_INTO_VIDEO, preferredTimescale: 600)
    
    
    do {
        let img = try assetImgGenerate.copyCGImage(at: time, actualTime: nil)
        let thumbnail = UIImage(cgImage: img)
        
        if thumbnail.size.height > 205{
            let bottomImage = UIImage(imageLiteralResourceName: "backgroundImage")
            let ri =  ResizeImage(img: thumbnail, tw:364, th:204)
            return bottomImage.mergeWith(topImage: ri)
        }

        return thumbnail
    } catch {
      print(error.localizedDescription)
      return nil
    }
}


func verifyUrl (urlString: String?) -> Bool {
    if let urlString = urlString {
        if let url = NSURL(string: urlString) {
            return UIApplication.shared.canOpenURL(url as URL)
        }
    }
    return false
}

struct ThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
             ThumbnailView(url: mySampleMovieLinkData[0])
             ThumbnailView(url: mySampleMovieLinkData[3])
             //ThumbnailView(url: "https://swing-videos.s3.us-east-2.amazonaws.com/Drill+Videos/tiptoeDrillFull.mp4")
             //ThumbnailView(url: "https://swing-videos.s3.us-east-2.amazonaws.com/Drill+Videos/barrelFull.mp4") // THIS LINK crashes canvas because it takes too long to load
            //ThumbnailView(url: "https://swing-videos.s3.us-east-2.amazonaws.com/Drill+Videos/stickFinishFull.mp4")
             ThumbnailView(url: "bad link")
             ThumbnailView(url: "")
             ThumbnailView(url: "another bad link")
        }
    }
}
