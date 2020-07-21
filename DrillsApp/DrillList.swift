//
//  ContentView.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/17/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI
import AVKit


/*
    DrillList is the opening scene for the app.  It is a List of all the video thumbnails.
        When a row is selected, a segue is made into the DrillDetail view for a specific Drill data object.
 */
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
              }
        }
  }


struct DrillListView_Previews: PreviewProvider {
    static var previews: some View {
        DrillListView()
    }
}



