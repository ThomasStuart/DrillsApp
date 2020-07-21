@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 85)
       //DrillDetail(drill: drillData[2])
        AnyView(Group{
            DrillDetail(drill: drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: 1)])
            DrillDetail(drill: drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: 2)])
            DrillDetail(drill: drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[2].arg[0].value.[0].value", fallback: 3)])
            DrillDetail(drill: drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].value", fallback: 4)])
        })
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 21)
              
        AnyView(List{ // this allows the view to be scrollable vertically
    
             VStack { // this encapsulates all of the drill data verticall as a stack.
                    // essentially Sections off the properties of the drill data and allows for customization

                // SECTION 1: Drill title
                Text(drill.title)
                    .font(.title)            // changes the font of the title
                    .foregroundColor(.white) // changes the text color
                
                // SECTION 2: DRILL VIDEO
                 //VStack{
                    
                    if drill.videoURL == nil{
                        Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: drill.videoURL ?? "") ?? UIImage(imageLiteralResourceName: "noVideo") )
                    }
                    else{
                        VideoPlayerContainerView(url: URL(string: drill.videoURL ?? "")! )
                   }
                 //}
                // .frame(height: C.VID_HEIGHT)
                
                Spacer()
                
                VStack(alignment: .leading ){
                    Text(__designTimeString("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Divider()
                    
                    ForEach(drill.benefits, id: \.id){ s in

                        BenefitView(text: s.name ?? "")
                    }
                }
                
                Spacer()
                    .frame(height: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: 50))
                
                //spacing setting adjust spacing between Stack elements
                VStack(spacing: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[0].value", fallback: 0)){
                    Text(__designTimeString("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                        .font(.title)
                        .foregroundColor(.white)

                    ForEach(drill.steps, id: \.id){ s in
                        StepView(number: s.num, text: s.name ?? "")
                    }

                    
                }.overlay(RoundedRectangle(cornerRadius: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value", fallback: 16)).stroke(color.darkGray, lineWidth: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[0].value.modifier[0].arg[1].value", fallback: 2))).background(RoundedRectangle(cornerRadius: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[1].arg[0].value.arg[0].value", fallback: 16)).fill( color.darkGray ))
                
            }
             .listRowBackground(color.darkBlue.opacity(__designTimeFloat("#192.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.40))).edgesIgnoringSafeArea(.all)
        }
        .background(color.darkBlue.opacity(__designTimeFloat("#192.[2].[1].property.[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.40))))
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews