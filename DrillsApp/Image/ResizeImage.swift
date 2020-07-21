//
//  ResizeImage.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/20/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//
import UIKit

func ResizeImage(img: UIImage, tw:Int, th:Int ) -> UIImage {
    let image = img
    let targetSize = CGSize(width: tw, height: th)

    let scaledImage = image.scalePreservingAspectRatio(
        targetSize: targetSize
    )

    return scaledImage
}


extension UIImage {
    func scalePreservingAspectRatio(targetSize: CGSize) -> UIImage {
        // Determine the scale factor that preserves aspect ratio
        let widthRatio = targetSize.width / size.width
        let heightRatio = targetSize.height / size.height
        
        let scaleFactor = min(widthRatio, heightRatio)
        
        // Compute the new image size that preserves aspect ratio
        let scaledImageSize = CGSize(
            width: size.width * scaleFactor,
            height: size.height * scaleFactor
        )

        // Draw and return the resized UIImage
        let renderer = UIGraphicsImageRenderer(
            size: scaledImageSize
        )

        let scaledImage = renderer.image { _ in
            self.draw(in: CGRect(
                origin: .zero,
                size: scaledImageSize
            ))
        }
        
        return scaledImage
    }
}
