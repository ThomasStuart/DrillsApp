@_private(sourceFile: "DrillDetail.swift") import DrillsApp
import SwiftUI
import SwiftUI

extension DrillDetail_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 28)
        AnyView(DrillDetail(drill: drillData[__designTimeInteger("#9752.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: 0)]))
#sourceLocation()
    }
}

extension DrillDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/DrillDetail.swift", line: 15)
         AnyView(VStack {
            Text(__designTimeString("#9752.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Targets"))
                .font(.title)
           
            ForEach(drill.targets, id: \.id){ s in
                Text( s.name ?? "")
            }
        })
#sourceLocation()
    }
}

typealias DrillDetail = DrillsApp.DrillDetail
typealias DrillDetail_Previews = DrillsApp.DrillDetail_Previews