//
//  Constants.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//


import Foundation
import SwiftUI

enum color{
    static let lightGreen =  Color(hex:"16a085")
}

struct cell {
   static let column = 3
    static let row   = 9
    static let padding : CGFloat = 20
    static let spacing : CGFloat = 20
   static  let width = (UIScreen.main.bounds.width/CGFloat(column))-padding
}
