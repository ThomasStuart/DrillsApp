@_private(sourceFile: "DrillRow.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillRow_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 30)
    
      AnyView(__designTimeSelection(Group {
        __designTimeSelection(DrillRow(drill: __designTimeSelection(drillData[__designTimeInteger("#7941.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: 2)], "#7941.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value")), "#7941.[3].[0].property.[0].[0].arg[0].value.[0]")
        __designTimeSelection(DrillRow(drill: __designTimeSelection(drillData[__designTimeInteger("#7941.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: 3)], "#7941.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value")), "#7941.[3].[0].property.[0].[0].arg[0].value.[1]")
      }, "#7941.[3].[0].property.[0].[0]"))
#sourceLocation()
       // .previewLayout(.fixed(width:300, height:400))
    }
}

extension DrillRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/DrillRow.swift", line: 16)
        AnyView(__designTimeSelection(HStack{
             __designTimeSelection(VStack{
                __designTimeSelection(ThumbnailView(url: drill.videoURL ?? C.NO_VID_VAL)
                    .overlay(__designTimeSelection(TitleOverlay(text: drill.title ?? C.NO_VID_VAL), "#7941.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value"), alignment: .bottomLeading), "#7941.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
               __designTimeSelection(Image(systemName: __designTimeString("#7941.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "play")), "#7941.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
             }
             .frame(height: __designTimeSelection(C.VID_HEIGHT, "#7941.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#7941.[2].[1].property.[0].[0].arg[0].value.[0]")
        }, "#7941.[2].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillRow = DrillsApp.DrillRow
typealias DrillRow_Previews = DrillsApp.DrillRow_Previews