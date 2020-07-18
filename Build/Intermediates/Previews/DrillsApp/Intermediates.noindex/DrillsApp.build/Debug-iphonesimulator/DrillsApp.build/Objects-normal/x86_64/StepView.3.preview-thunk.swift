@_private(sourceFile: "StepView.swift") import DrillsApp
import SwiftUI
import SwiftUI

extension StepView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/StepView.swift", line: 42)
        AnyView(__designTimeSelection(Group{
            __designTimeSelection(StepView(number: __designTimeInteger("#14653.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 1), text: __designTimeString("#14653.[2].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].value", fallback: "Move hips all the way through")), "#14653.[2].[0].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(StepView(number: __designTimeInteger("#14653.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 2), text: __designTimeString("#14653.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].value", fallback: "Dont forget to keep your head pointing down the line")), "#14653.[2].[0].property.[0].[0].arg[0].value.[1]")
        }, "#14653.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension StepView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/StepView.swift", line: 17)
        
        AnyView(__designTimeSelection(HStack{
            __designTimeSelection(Text( __designTimeSelection(String(__designTimeSelection(number, "#14653.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#14653.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value") )
                .font(.title)
                .frame(alignment: .leading)
                .padding()
                .overlay(
                    __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#14653.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 16))
                        .stroke(__designTimeSelection(Color.green, "#14653.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value"), lineWidth: __designTimeInteger("#14653.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2)), "#14653.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value") ), "#14653.[1].[2].property.[0].[0].arg[0].value.[0]")
                
            __designTimeSelection(Spacer()
                .frame(width:__designTimeInteger("#14653.[1].[2].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 20)), "#14653.[1].[2].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(Text(__designTimeSelection(text, "#14653.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value")), "#14653.[1].[2].property.[0].[0].arg[0].value.[2]")

            __designTimeSelection(Spacer(), "#14653.[1].[2].property.[0].[0].arg[0].value.[3]")
            
        }   .padding(__designTimeSelection(EdgeInsets(top: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), leading: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[1].value", fallback: 0), bottom: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[2].value", fallback: 0), trailing: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[3].value", fallback: 5)), "#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value"))
            .overlay(
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 16))
                    .stroke(__designTimeSelection(Color.green, "#14653.[1].[2].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value"), lineWidth: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[1].value", fallback: 2)), "#14653.[1].[2].property.[0].[0].modifier[1].arg[0].value") ), "#14653.[1].[2].property.[0].[0]"))
#sourceLocation()
    }
}

typealias StepView = DrillsApp.StepView
typealias StepView_Previews = DrillsApp.StepView_Previews