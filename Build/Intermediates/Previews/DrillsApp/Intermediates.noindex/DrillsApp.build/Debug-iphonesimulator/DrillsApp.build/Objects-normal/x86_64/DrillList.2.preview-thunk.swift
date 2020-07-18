@_private(sourceFile: "DrillList.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillList.swift", line: 31)
        AnyView(DrillListView())
#sourceLocation()
    }
}

extension DrillListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillList.swift", line: 17)
            AnyView(NavigationView {
                List(drillData) { drill in
                    NavigationLink(destination: DrillDetail(drill: drill)) {
                        DrillRow(drill: drill)
                    }
                }
                .navigationBarTitle(Text(__designTimeString("#10957.[3].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Drills")))
            })
#sourceLocation()
    }
}

typealias DrillListView = DrillsApp.DrillListView
typealias DrillListView_Previews = DrillsApp.DrillListView_Previews