//
//  ContentView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit




struct DrillListView: View {
    
        var body: some View {
            VStack{
                Text("Golf AI")
                   .font(.system(size: 30, weight: .heavy, design: .default))
        
                    NavigationView {
                        List(drillData) { drill in
                            NavigationLink(destination: DrillDetail(drill: drill)) {
                                DrillRow(drill: drill)
                            }
                        }
                        .navigationBarTitle(Text("Drills: "))
                    }
            }.background(color.darkBlue)
        }
  }


struct DrillListView_Previews: PreviewProvider {
    static var previews: some View {
        DrillListView()
    }
}



