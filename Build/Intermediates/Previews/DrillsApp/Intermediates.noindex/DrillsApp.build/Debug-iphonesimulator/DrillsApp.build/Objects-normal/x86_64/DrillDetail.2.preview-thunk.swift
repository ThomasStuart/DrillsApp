@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 62)
       AnyView(DrillDetail(drill: drillData[__designTimeInteger("#9315.[3].[0].property.[0].[0].arg[0].value.[0].value", fallback: 2)]))
#sourceLocation()
//        Group{
//            DrillDetail(drill: drillData[1])
//            DrillDetail(drill: drillData[2])
//            DrillDetail(drill: drillData[3])
//            DrillDetail(drill: drillData[4])
//        }
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 20)
        
        AnyView(List{
             VStack {
                
                Text(drill.title)
                    .font(.title)
                            
                 VStack{
                    PlayerContainerView(player: AVPlayer(url: URL(string: drill.videoURL ?? "")!), videoTitle: __designTimeString("#9315.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].value", fallback: ""),url: drill.videoURL ?? "")
                 }
                .frame(height: UIScreen.main.bounds.height / 3.5)
                
                
                VStack{
                    Text(__designTimeString("#9315.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                        .font(.title)

                    ForEach(drill.benefits, id: \.id){ s in
                        Text( s.name ?? "")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                    .frame(height: __designTimeInteger("#9315.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[0].value", fallback: 50))
                
                //spacing setting adjust spacing between Stack elements
                VStack(spacing: __designTimeInteger("#9315.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[0].value", fallback: 20)){
                    Text(__designTimeString("#9315.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                        .font(.title)

                    ForEach(drill.steps, id: \.id){ s in
                        StepView(number: s.num, text: s.name ?? "")
                    }
                }
            }
        })
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews