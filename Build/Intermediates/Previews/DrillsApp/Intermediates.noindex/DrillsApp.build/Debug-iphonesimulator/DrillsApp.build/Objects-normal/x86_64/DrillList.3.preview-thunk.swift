@_private(sourceFile: "DrillList.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension DrillListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillList.swift", line: 31)
        AnyView(__designTimeSelection(DrillListView(), "#10957.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DrillListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillList.swift", line: 17)
            AnyView(__designTimeSelection(NavigationView {
                __designTimeSelection(List(__designTimeSelection(drillData, "#10957.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value")) { drill in
                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(DrillDetail(drill: __designTimeSelection(drill, "#10957.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#10957.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                        __designTimeSelection(DrillRow(drill: __designTimeSelection(drill, "#10957.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#10957.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                    }, "#10957.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
                }
                .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#10957.[3].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Drills")), "#10957.[3].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#10957.[3].[0].property.[0].[0].arg[0].value.[0]")
            }, "#10957.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillListView = DrillsApp.DrillListView
typealias DrillListView_Previews = DrillsApp.DrillListView_Previews