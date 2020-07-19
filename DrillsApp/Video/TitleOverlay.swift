//
//  TitleOverlay.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


struct TitleOverlay: View {
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

struct TitleOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TitleOverlay(text: "Sample Movie Title")
    }
}
