@_private(sourceFile: "ContentView.swift") import DrillsApp
import SwiftUI
import SwiftUI
import AVKit

extension PlayerView {
    @_dynamicReplacement(for: makeUIView(context:)) private func __preview__makeUIView(context: Context) -> UIView {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 29)
    return __designTimeSelection(PlayerUIView(player: __designTimeSelection(player, "#9013.[4].[2].[0].arg[0].value")), "#9013.[4].[2].[0]")
#sourceLocation()
    }
}

extension PlayerView {
    @_dynamicReplacement(for: updateUIView(_:context:)) private func __preview__updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 27)
#sourceLocation()
    }
}

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 20)
        AnyView(__designTimeSelection(ContentView(), "#9013.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/ContentView.swift", line: 14)
          AnyView(__designTimeSelection(PlayerContainerView(player: __designTimeSelection(AVPlayer(url: URL(string: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8")!), "#9013.[2].[0].property.[0].[0].arg[0].value")), "#9013.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = DrillsApp.ContentView
typealias ContentView_Previews = DrillsApp.ContentView_Previews
typealias PlayerView = DrillsApp.PlayerView