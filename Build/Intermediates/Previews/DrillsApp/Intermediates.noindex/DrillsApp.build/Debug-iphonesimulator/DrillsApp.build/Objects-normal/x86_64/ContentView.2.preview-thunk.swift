@_private(sourceFile: "ContentView.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 51)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 31)
        
        AnyView(NavigationView{
            ScrollView(.vertical, showsIndicators: __designTimeBoolean("#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                ForEach(0..<cell.row){ i in
                    HStack(alignment: .center, spacing: cell.spacing){
                        ForEach(0..<cell.column){ j in
                            CollectionViewCell(row: i, column: j)
//                            NavigationLink(destination: DrillDetail(drill: drillData[0]) ){
//                                CollectionViewCell(row: i, column: j)
//                            }
                        }.padding(.bottom, __designTimeInteger("#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value", fallback: 10))
                    }
                }.navigationBarTitle(__designTimeString("#9472.[3].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value.[0].value", fallback: "Drills"))
            }
        })
#sourceLocation()
    }
}

typealias ContentView = DrillsApp.ContentView
typealias ContentView_Previews = DrillsApp.ContentView_Previews