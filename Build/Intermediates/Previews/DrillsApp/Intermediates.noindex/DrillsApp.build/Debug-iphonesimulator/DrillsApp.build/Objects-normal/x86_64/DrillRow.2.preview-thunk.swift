@_private(sourceFile: "DrillRow.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillRow_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 30)
    
      AnyView(Group {
        DrillRow(drill: drillData[__designTimeInteger("#7941.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: 2)])
        DrillRow(drill: drillData[__designTimeInteger("#7941.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: 3)])
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
                ThumbnailView(url: drill.videoURL ?? C.NO_VID_VAL)
                    .overlay(TitleOverlay(text: drill.title ?? C.NO_VID_VAL), alignment: .bottomLeading)
               Image(systemName: __designTimeString("#7941.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "play"))
             }
             .frame(height: C.VID_HEIGHT)
        })
#sourceLocation()
    }
}

typealias DrillRow = DrillsApp.DrillRow
typealias DrillRow_Previews = DrillsApp.DrillRow_Previews