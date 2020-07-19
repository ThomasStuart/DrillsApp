@_private(sourceFile: "DrillRow.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillRow_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 29)
    
      AnyView(Group {
        DrillRow(drill: drillData[__designTimeInteger("#9399.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: 0)])
        DrillRow(drill: drillData[__designTimeInteger("#9399.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: 1)])
      })
#sourceLocation()
       // .previewLayout(.fixed(width:300, height:400))
    }
}

extension DrillRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 16)
        AnyView(HStack{
            
             VStack{
                PlayerContainerView(player: AVPlayer(url: URL(string: drill.videoURL ?? "")!), videoTitle: drill.title, url: drill.videoURL ?? "")
             }
            .frame(height: UIScreen.main.bounds.height / 3.5)
        })
#sourceLocation()
    }
}

typealias DrillRow = DrillsApp.DrillRow
typealias DrillRow_Previews = DrillsApp.DrillRow_Previews