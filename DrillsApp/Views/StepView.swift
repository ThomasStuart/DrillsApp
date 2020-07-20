//
//  StepView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI

struct StepView: View {
    var number: Int
    var text  : String
    
    var body: some View {
        
        HStack{
            Text( String(number) )
                .foregroundColor(.white)
                .font(.title)
                .frame(alignment: .leading)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(color.darkRed, lineWidth: 2) )
                
            Spacer()
                .frame(width:20)
            Text(text)
                 .foregroundColor(.white)
            Spacer()
            
        }   .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(color.darkRed.opacity(0.95), lineWidth: 2)).background(RoundedRectangle(cornerRadius: 16).fill(color.darkGreen.opacity(0.95)))
    
    }
}

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            StepView(number: 1, text: "Move hips all the way through")
            StepView(number: 2, text: "Dont forget to keep your head pointing down the line")
        }
    }
}
