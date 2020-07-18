@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 70)
        AnyView(DrillDetail(drill: drillData[__designTimeInteger("#9263.[4].[0].property.[0].[0].arg[0].value.[0].value", fallback: 1)]))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: makeView(text:)) private func __preview__makeView(text:String) -> StepView {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 63)
        return  StepView(number: __designTimeInteger("#9263.[3].[2].[0].arg[0].value", fallback: 1), text: text)
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 26)
        
         AnyView(VStack {
            
            Text(drill.title)
                .font(.title)
            
        
            //Text(drill.videoURL ?? "no data")
            
             VStack{
                PlayerContainerView(player: AVPlayer(url: URL(string: mp4Data[0])!), videoTitle: __designTimeString("#9263.[3].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].value", fallback: ""))
             }
            .frame(height: UIScreen.main.bounds.height / 3.5)
            
            
            VStack{
                Text(__designTimeString("#9263.[3].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                    .font(.title)

                ForEach(drill.benefits, id: \.id){ s in
                    Text( s.name ?? "")
                        .font(.subheadline)
                }
            }
            
            //spacing setting adjust spacing between Stack elements 
            VStack(spacing: __designTimeInteger("#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: 20)){
                Text(__designTimeString("#9263.[3].[1].property.[0].[0].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                    .font(.title)

                ForEach(drill.steps, id: \.id){ s in
                    StepView(number: s.num, text: s.name ?? "")
                }
            }
        })
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