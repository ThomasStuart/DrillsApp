@_private(sourceFile: "DrillRow.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillRow_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 29)
    
      AnyView(__designTimeSelection(Group {
        __designTimeSelection(DrillRow(drill: __designTimeSelection(drillData[__designTimeInteger("#9250.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: 0)], "#9250.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value")), "#9250.[3].[0].property.[0].[0].arg[0].value.[0]")
        __designTimeSelection(DrillRow(drill: __designTimeSelection(drillData[__designTimeInteger("#9250.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: 1)], "#9250.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value")), "#9250.[3].[0].property.[0].[0].arg[0].value.[1]")
      }
        .previewLayout(.fixed(width:__designTimeInteger("#9250.[3].[0].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 300), height:__designTimeInteger("#9250.[3].[0].property.[0].[0].modifier[0].arg[0].value.arg[1].value", fallback: 70))), "#9250.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DrillRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 16)
        AnyView(__designTimeSelection(HStack{
            
             __designTimeSelection(VStack{
                __designTimeSelection(PlayerContainerView(player: __designTimeSelection(AVPlayer(url: URL(string: mp4Data[0])!), "#9250.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value"), videoTitle: __designTimeSelection(drill.title, "#9250.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")), "#9250.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
             }
            .frame(height: UIScreen.main.bounds.height / 3.5), "#9250.[2].[1].property.[0].[0].arg[0].value.[0]")
        }, "#9250.[2].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillRow = DrillsApp.DrillRow
typealias DrillRow_Previews = DrillsApp.DrillRow_Previews