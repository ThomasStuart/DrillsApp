@_private(sourceFile: "StepView.swift") import DrillsApp
import SwiftUI
import SwiftUI

extension StepView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/StepView.swift", line: 42)
        AnyView(Group{
            StepView(number: __designTimeInteger("#14653.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 1), text: __designTimeString("#14653.[2].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].value", fallback: "Move hips all the way through"))
            StepView(number: __designTimeInteger("#14653.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 2), text: __designTimeString("#14653.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].value", fallback: "Dont forget to keep your head pointing down the line"))
        })
#sourceLocation()
    }
}

extension StepView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/StepView.swift", line: 17)
        
        AnyView(HStack{
            Text( String(number) )
                .font(.title)
                .frame(alignment: .leading)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: __designTimeInteger("#14653.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 16))
                        .stroke(Color.green, lineWidth: __designTimeInteger("#14653.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2)) )
                
            Spacer()
                .frame(width:__designTimeInteger("#14653.[1].[2].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 20))
            Text(text)

            Spacer()
            
        }   .padding(EdgeInsets(top: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), leading: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[1].value", fallback: 0), bottom: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[2].value", fallback: 0), trailing: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[3].value", fallback: 5)))
            .overlay(
                RoundedRectangle(cornerRadius: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 16))
                    .stroke(Color.green, lineWidth: __designTimeInteger("#14653.[1].[2].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[1].value", fallback: 2)) ))
#sourceLocation()
    }
}

typealias StepView = DrillsApp.StepView
typealias StepView_Previews = DrillsApp.StepView_Previews