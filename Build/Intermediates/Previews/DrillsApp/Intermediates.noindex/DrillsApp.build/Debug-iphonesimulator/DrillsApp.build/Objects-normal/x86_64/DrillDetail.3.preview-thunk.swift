@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 90)
       //DrillDetail(drill: drillData[2])
        AnyView(__designTimeSelection(Group{
            __designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: 1)], "#192.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value")), "#192.[3].[0].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: 2)], "#192.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value")), "#192.[3].[0].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[2].arg[0].value.[0].value", fallback: 3)], "#192.[3].[0].property.[0].[0].arg[0].value.[2].arg[0].value")), "#192.[3].[0].property.[0].[0].arg[0].value.[2]")
            __designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#192.[3].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].value", fallback: 4)], "#192.[3].[0].property.[0].[0].arg[0].value.[3].arg[0].value")), "#192.[3].[0].property.[0].[0].arg[0].value.[3]")
        }, "#192.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 21)
              
        AnyView(__designTimeSelection(List{ // this allows the view to be scrollable vertically
    
             __designTimeSelection(VStack { // this encapsulates all of the drill data verticall as a stack.
                    // essentially Sections off the properties of the drill data and allows for customization

                // SECTION 1: Drill title
                __designTimeSelection(Text(__designTimeSelection(drill.title, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value"))
                    .font(.title)            // changes the font of the title
                    .foregroundColor(.white), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]") // changes the text color
                 // END SECTION 1
                
                // SECTION 2: DRILL VIDEO
                __designTimeSelection(VStack{ // needs to be in a VStack or else the video is crushed to a really small size.
                    
                    // if there was no video in the JSON, defualt to no video image
                    if drill.videoURL == nil{
                        __designTimeSelection(Image(uiImage: createThumbnailOfVideoFromRemoteUrl(url: drill.videoURL ?? "") ?? UIImage(imageLiteralResourceName: "noVideo") ), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                    }
                    else{
                        __designTimeSelection(VideoPlayerContainerView(url: URL(string: drill.videoURL ?? "")! ), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0]")
                   }
                 }
                 .frame(height: __designTimeSelection(C.VID_HEIGHT, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                // END SECTION 2
                
                __designTimeSelection(Spacer()
                    .frame(height:__designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 25)), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
                // SECTION 3: Benefits title and bullet points
                __designTimeSelection(VStack(alignment: .leading ){
                    __designTimeSelection(Text(__designTimeString("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "Benefits:"))
                        .font(.title)
                        .foregroundColor(.white), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")
                    
                    __designTimeSelection(Divider(), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1]")
                    
                    __designTimeSelection(ForEach(__designTimeSelection(drill.benefits, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[0].value"), id: \.id){ s in
                        __designTimeSelection(BenefitView(text: s.name ?? ""), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[2].value.[0]")
                    }, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2]")
                }, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
                // END SECTION 3
                
                __designTimeSelection(Spacer()
                    .frame(height: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: 50)), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[4]")
                
                
                //SECTION 4: Steps title and step text
                __designTimeSelection(VStack(spacing: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[0].value", fallback: 0)){//spacing setting adjust spacing between Stack elements
                    __designTimeSelection(Text(__designTimeString("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0].arg[0].value.[0].value", fallback: "Steps:"))
                        .font(.title)
                        .foregroundColor(.white), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0]")

                    __designTimeSelection(ForEach(__designTimeSelection(drill.steps, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[1].arg[0].value"), id: \.id){ s in
                        __designTimeSelection(StepView(number: __designTimeSelection(s.num, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[1].arg[2].value.[0].arg[0].value"), text: s.name ?? ""), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[1].arg[2].value.[0]")
                    }, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[1]")
                }.overlay(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[0].value.arg[0].value", fallback: 16)).stroke(__designTimeSelection(color.darkGray, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[0].value.modifier[0].arg[0].value"), lineWidth: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[0].value.modifier[0].arg[1].value", fallback: 2)), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[0].value")).background(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[1].arg[0].value.arg[0].value", fallback: 16)).fill( __designTimeSelection(color.darkGray, "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[1].arg[0].value.modifier[0].arg[0].value") ), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[1].arg[0].value")), "#192.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[5]")
               //END SECTION 4
                
            }
             .listRowBackground(__designTimeSelection(color.darkBlue.opacity(__designTimeFloat("#192.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.40)), "#192.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")).edgesIgnoringSafeArea(.all), "#192.[2].[1].property.[0].[0].arg[0].value.[0]")
        }
        .background(__designTimeSelection(color.darkBlue.opacity(__designTimeFloat("#192.[2].[1].property.[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.40)), "#192.[2].[1].property.[0].[0].modifier[0].arg[0].value")), "#192.[2].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews