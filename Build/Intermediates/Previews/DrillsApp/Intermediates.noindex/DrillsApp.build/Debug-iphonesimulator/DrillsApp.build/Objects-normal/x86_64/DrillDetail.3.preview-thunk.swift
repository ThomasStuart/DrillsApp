@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 70)
       AnyView(__designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#9868.[3].[0].property.[0].[0].arg[0].value.[0].value", fallback: 2)], "#9868.[3].[0].property.[0].[0].arg[0].value")), "#9868.[3].[0].property.[0].[0]"))
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
        
        AnyView(__designTimeSelection(List{
             __designTimeSelection(VStack {
                
                __designTimeSelection(Text(__designTimeSelection(drill.title, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value"))
                    .font(.title), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                            
                 __designTimeSelection(VStack{
                    if drill.videoURL == nil{
                        __designTimeSelection(Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: drill.videoURL ?? "") ?? UIImage(imageLiteralResourceName: "noVideo") ), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                    }
                    else{
                     __designTimeSelection(PlayerContainerView(player: __designTimeSelection(AVPlayer(url: URL(string: drill.videoURL ?? "")!), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value"), videoTitle: __designTimeString("#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[1].value.[0].value", fallback: ""),url: drill.videoURL ?? ""), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0]")
                   }
                 }
                 .frame(height: __designTimeSelection(C.VID_HEIGHT, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                
                __designTimeSelection(VStack{
                    __designTimeSelection(Text(__designTimeString("#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                        .font(.title), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")

                    __designTimeSelection(ForEach(__designTimeSelection(drill.benefits, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                        __designTimeSelection(Text( s.name ?? "")
                            .font(.subheadline), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[2].value.[0]")
                    }, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1]")
                }, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
                __designTimeSelection(Spacer()
                    .frame(height: __designTimeInteger("#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[0].value", fallback: 50)), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
                
                //spacing setting adjust spacing between Stack elements
                __designTimeSelection(VStack(spacing: __designTimeInteger("#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[0].value", fallback: 20)){
                    __designTimeSelection(Text(__designTimeString("#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                        .font(.title), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0]")

                    __designTimeSelection(ForEach(__designTimeSelection(drill.steps, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[1].arg[0].value"), id: \.id){ s in
                        __designTimeSelection(StepView(number: __designTimeSelection(s.num, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[1].arg[2].value.[0].arg[0].value"), text: s.name ?? ""), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[1].arg[2].value.[0]")
                    }, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[1]")
                }, "#9868.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4]")
            }
             .background(__designTimeSelection(color.darkBlue.opacity(__designTimeFloat("#9868.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.40)), "#9868.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#9868.[2].[1].property.[0].[0].arg[0].value.[0]")
        }
        .background(__designTimeSelection(color.darkGreen, "#9868.[2].[1].property.[0].[0].modifier[0].arg[0].value")), "#9868.[2].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews