@_private(sourceFile: "ContentView.swift") import DrillsApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 19)
        AnyView(__designTimeSelection(ContentView(), "#9013.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 13)
        AnyView(__designTimeSelection(Text(__designTimeString("#9013.[1].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Hello, World!")), "#9013.[1].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = DrillsApp.ContentView
typealias ContentView_Previews = DrillsApp.ContentView_Previews