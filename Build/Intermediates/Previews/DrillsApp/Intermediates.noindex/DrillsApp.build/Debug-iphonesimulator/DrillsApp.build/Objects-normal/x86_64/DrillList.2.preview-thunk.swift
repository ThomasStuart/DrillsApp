@_private(sourceFile: "DrillList.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillList.swift", line: 39)
        AnyView(DrillListView())
#sourceLocation()
    }
}

extension DrillListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillList.swift", line: 19)
        
            AnyView(VStack{
        
                Text(__designTimeString("#464.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Golf AI"))
                   .font(.system(size: __designTimeInteger("#464.[2].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .heavy, design: .default))
        
                    NavigationView {
                        List(drillData) { drill in
                            NavigationLink(destination: DrillDetail(drill: drill)) {
                                DrillRow(drill: drill)
                            }
                        }
                        .navigationBarTitle(Text(__designTimeString("#464.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Drills: ")))
                    }
            }.background(color.darkBlue))
#sourceLocation()
    }
}

typealias DrillListView = DrillsApp.DrillListView
typealias DrillListView_Previews = DrillsApp.DrillListView_Previews