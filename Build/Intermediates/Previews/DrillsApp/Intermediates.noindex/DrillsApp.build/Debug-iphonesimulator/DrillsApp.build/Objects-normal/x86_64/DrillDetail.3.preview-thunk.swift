@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 69)
        AnyView(__designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#9263.[4].[0].property.[0].[0].arg[0].value.[0].value", fallback: 1)], "#9263.[4].[0].property.[0].[0].arg[0].value")), "#9263.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: makeView(text:)) private func __preview__makeView(text:String) -> StepView {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 62)
        return  __designTimeSelection(StepView(number: __designTimeInteger("#9263.[3].[2].[0].arg[0].value", fallback: 1), text: __designTimeSelection(text, "#9263.[3].[2].[0].arg[1].value")), "#9263.[3].[2].[0]")
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 26)
        
         AnyView(__designTimeSelection(VStack {
            
            __designTimeSelection(Text(__designTimeSelection(drill.title, "#9263.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value"))
                .font(.title), "#9263.[3].[1].property.[0].[0].arg[0].value.[0]")
            
        
            __designTimeSelection(Text(drill.videoURL ?? "no data"), "#9263.[3].[1].property.[0].[0].arg[0].value.[1]")
            
             __designTimeSelection(VStack{
                __designTimeSelection(PlayerContainerView(player: __designTimeSelection(AVPlayer(url: URL(string: mp4Data[0])!), "#9263.[3].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value"), videoTitle: __designTimeString("#9263.[3].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].value", fallback: "")), "#9263.[3].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0]")
             }
            .frame(height: UIScreen.main.bounds.height / 3.5), "#9263.[3].[1].property.[0].[0].arg[0].value.[2]")
            
            
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                    .font(.title), "#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")

                __designTimeSelection(ForEach(__designTimeSelection(drill.benefits, "#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                    __designTimeSelection(Text( s.name ?? "")
                        .font(.subheadline), "#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[2].value.[0]")
                }, "#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[1]")
            }, "#9263.[3].[1].property.[0].[0].arg[0].value.[3]")
            
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#9263.[3].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                    .font(.title), "#9263.[3].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[0]")

                __designTimeSelection(ForEach(__designTimeSelection(drill.steps, "#9263.[3].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                    __designTimeSelection(StepView(number: __designTimeSelection(s.num, "#9263.[3].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[2].value.[0].arg[0].value"), text: s.name ?? ""), "#9263.[3].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[2].value.[0]")
                }, "#9263.[3].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[1]")
            }, "#9263.[3].[1].property.[0].[0].arg[0].value.[4]")
        }, "#9263.[3].[1].property.[0].[0]"))
#sourceLocation()
    }
}

extension StepNumber {
    @_dynamicReplacement(for: increment()) private func __preview__increment() {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 16)
        self.num += 1
#sourceLocation()
    }
}

typealias StepNumber = DrillsApp.StepNumber
typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews