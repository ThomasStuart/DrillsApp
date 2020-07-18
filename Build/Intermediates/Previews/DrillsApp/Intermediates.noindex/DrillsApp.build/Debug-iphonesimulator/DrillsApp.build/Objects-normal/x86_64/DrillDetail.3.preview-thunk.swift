@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 70)
        AnyView(__designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#7726.[3].[0].property.[0].[0].arg[0].value.[0].value", fallback: 0)], "#7726.[3].[0].property.[0].[0].arg[0].value")), "#7726.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 18)
        
         AnyView(__designTimeSelection(VStack {
            
            __designTimeSelection(Text(__designTimeSelection(drill.title, "#7726.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value"))
                .font(.title), "#7726.[2].[1].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(VStack{
                __designTimeSelection(HStack{
                __designTimeSelection(Text(__designTimeString("#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Targets:"))
                    .font(.headline), "#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0]")

                __designTimeSelection(ForEach(__designTimeSelection(drill.targets, "#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                    __designTimeSelection(Text( s.name ?? "")
                        .font(.caption), "#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0]")
                }, "#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1]")
                }, "#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
            }, "#7726.[2].[1].property.[0].[0].arg[0].value.[1]")
        
            __designTimeSelection(Text(drill.videoURL ?? "no data"), "#7726.[2].[1].property.[0].[0].arg[0].value.[2]")
            
             __designTimeSelection(VStack{
                 __designTimeSelection(PlayerContainerView(player: __designTimeSelection(AVPlayer(url: URL(string: mp4Data[0])!), "#7726.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value")), "#7726.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
             }
            .frame(height: UIScreen.main.bounds.height / 3.5), "#7726.[2].[1].property.[0].[0].arg[0].value.[3]")
            
            
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#7726.[2].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                    .font(.title), "#7726.[2].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[0]")

                __designTimeSelection(ForEach(__designTimeSelection(drill.benefits, "#7726.[2].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                    __designTimeSelection(Text( s.name ?? "")
                        .font(.subheadline), "#7726.[2].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[2].value.[0]")
                }, "#7726.[2].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1]")
            }, "#7726.[2].[1].property.[0].[0].arg[0].value.[4]")
            
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#7726.[2].[1].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                    .font(.title), "#7726.[2].[1].property.[0].[0].arg[0].value.[5].arg[0].value.[0]")

                __designTimeSelection(ForEach(__designTimeSelection(drill.steps, "#7726.[2].[1].property.[0].[0].arg[0].value.[5].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                    __designTimeSelection(Text( s.name ?? "")
                        .font(.subheadline)
                        .lineLimit(nil), "#7726.[2].[1].property.[0].[0].arg[0].value.[5].arg[0].value.[1].arg[2].value.[0]")
                }, "#7726.[2].[1].property.[0].[0].arg[0].value.[5].arg[0].value.[1]")
            }, "#7726.[2].[1].property.[0].[0].arg[0].value.[5]")
        }, "#7726.[2].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews