//
//  MergeImage.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/20/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import UIKit



extension UIImage {
  func mergeWith(topImage: UIImage) -> UIImage {
    let bottomImage = self

    UIGraphicsBeginImageContext(size)

    let areaSize = CGRect(x: 0, y: 0, width: bottomImage.size.width, height: bottomImage.size.height)
    bottomImage.draw(in: areaSize)

    let sameSize = CGRect(x: 125, y: 0, width: topImage.size.width, height: topImage.size.height)
    //topImage.draw(in: sameSize, blendMode: .normal, alpha: 1.0)
    topImage.draw(in: sameSize)


    let mergedImage = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return mergedImage
  }
}
