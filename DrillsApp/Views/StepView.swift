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
                .font(.title)
                .frame(alignment: .leading)
                
            Spacer()
                .frame(width:20)
            Text(text)
        }
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
