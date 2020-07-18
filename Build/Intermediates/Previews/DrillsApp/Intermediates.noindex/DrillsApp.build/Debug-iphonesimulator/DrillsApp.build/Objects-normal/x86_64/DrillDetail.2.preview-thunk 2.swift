@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 71)
        AnyView(DrillDetail(drill: drillData[__designTimeInteger("#7726.[3].[0].property.[0].[0].arg[0].value.[0].value", fallback: 0)]))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 18)
        
         AnyView(VStack {
            
            Text(drill.title)
                .font(.title)
            
            VStack{
                HStack{
                Text(__designTimeString("#7726.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Targets:"))
                    .font(.headline)

                ForEach(drill.targets, id: \.id){ s in
                    Text( s.name ?? "")
                        .font(.caption)
                }
                }
            }
        
            Text(drill.videoURL ?? "no data")
            
             VStack{
                 PlayerContainerView(player: AVPlayer(url: URL(string: mp4Data[0])!))
             }
            .frame(height: UIScreen.main.bounds.height / 3.5)
            
            
            VStack{
                Text(__designTimeString("#7726.[2].[1].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                    .font(.title)

                ForEach(drill.benefits, id: \.id){ s in
                    Text( s.name ?? "")
                        .font(.subheadline)
                }
            }
            
            VStack{
                Text(__designTimeString("#7726.[2].[1].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                    .font(.title)

                ForEach(drill.steps, id: \.id){ s in
                    Text( s.name ?? "")
                        .font(.subheadline)
                     .lineLimit(nil)
                    
                }
            }
        })
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews