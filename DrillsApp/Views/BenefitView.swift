//
//  BenefitView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/20/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI


struct BenefitView: View {
    var text: String
    
    var body: some View {
        HStack{
            Image("gb32")
            Text(text)
                .foregroundColor(.white)
        }
    }
}

struct BenefitView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitView(text: "Teached proper  finish position")
    }
}
