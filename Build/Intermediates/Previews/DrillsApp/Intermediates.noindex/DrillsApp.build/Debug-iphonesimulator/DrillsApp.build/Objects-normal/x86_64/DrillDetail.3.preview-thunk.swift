@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 28)
        AnyView(__designTimeSelection(DrillDetail(drill: __designTimeSelection(drillData[__designTimeInteger("#9752.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: 0)], "#9752.[2].[0].property.[0].[0].arg[0].value")), "#9752.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 15)
         AnyView(__designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeString("#9752.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Targets"))
                .font(.title), "#9752.[1].[1].property.[0].[0].arg[0].value.[0]")
           
            __designTimeSelection(ForEach(__designTimeSelection(drill.targets, "#9752.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value"), id: \.id){ s in
                __designTimeSelection(Text( s.name ?? ""), "#9752.[1].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[0]")
            }, "#9752.[1].[1].property.[0].[0].arg[0].value.[1]")
        }, "#9752.[1].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews