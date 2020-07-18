@_private(sourceFile: "ContentView.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 51)
        AnyView(__designTimeSelection(ContentView(), "#9472.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 31)
        
        AnyView(__designTimeSelection(NavigationView{
            __designTimeSelection(ScrollView(.vertical, showsIndicators: __designTimeBoolean("#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                __designTimeSelection(ForEach(0..<cell.row){ i in
                    __designTimeSelection(HStack(alignment: .center, spacing: __designTimeSelection(cell.spacing, "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[1].value")){
                        __designTimeSelection(ForEach(0..<cell.column){ j in
                            __designTimeSelection(CollectionViewCell(row: __designTimeSelection(i, "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"), column: __designTimeSelection(j, "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[1].value")), "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
//                            NavigationLink(destination: DrillDetail(drill: drillData[0]) ){
//                                CollectionViewCell(row: i, column: j)
//                            }
                        }.padding(.bottom, __designTimeInteger("#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value", fallback: 10)), "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0]")
                    }, "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                }.navigationBarTitle(__designTimeString("#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value.[0].value", fallback: "Drills")), "#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0]")
            }, "#9472.[3].[0].property.[0].[0].arg[0].value.[0]")
        }, "#9472.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = DrillsApp.ContentView
typealias ContentView_Previews = DrillsApp.ContentView_Previews