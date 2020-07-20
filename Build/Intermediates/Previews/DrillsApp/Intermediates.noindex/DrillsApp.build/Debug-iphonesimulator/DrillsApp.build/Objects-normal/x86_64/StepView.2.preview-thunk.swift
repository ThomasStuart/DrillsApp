@_private(sourceFile: "StepView.swift") import DrillsApp
import SwiftUI
import SwiftUI

extension StepView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/StepView.swift", line: 49)
        AnyView(Group{
            StepView(number: __designTimeInteger("#436.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 1), text: __designTimeString("#436.[2].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].value", fallback: "Move hips all the way through"))
            StepView(number: __designTimeInteger("#436.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 2), text: __designTimeString("#436.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].value", fallback: "Dont forget to keep your head pointing down the line"))
        })
#sourceLocation()
    }
}

extension StepView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Thomas_Stuart/Desktop/XcodeProjects/DrillsApp/DrillsApp/Views/StepView.swift", line: 17)
        
        AnyView(HStack{
            Text( String(number) )
                .foregroundColor(.white)
                .font(.title)
                .frame(alignment: .leading)
                .padding()
//                .overlay(
//                    RoundedRectangle(cornerRadius: 16)
//                        .stroke(Color.black, lineWidth: 2) )
            
            Divider().frame(width: __designTimeInteger("#436.[1].[2].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 1),height: __designTimeInteger("#436.[1].[2].property.[0].[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 2)).padding(.vertical, __designTimeInteger("#436.[1].[2].property.[0].[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 15)).background(Color.white)
                
            Spacer()
                .frame(width:__designTimeInteger("#436.[1].[2].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 20))
            Text(text)
                 .foregroundColor(.white)

            Spacer()
            

        }   .padding(EdgeInsets(top: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), leading: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[1].value", fallback: 0), bottom: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[2].value", fallback: 0), trailing: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[3].value", fallback: 5)))
            //color.darkRed.opacity(0.95)
            //Color(UIColor.lightGray)
            .overlay(RoundedRectangle(cornerRadius: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 16)).stroke(color.darkGreen, lineWidth: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[1].value", fallback: 2))).background(RoundedRectangle(cornerRadius: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[2].arg[0].value.arg[0].value", fallback: 16)).fill( color.darkGreen ))
            .overlay(Divider().frame(width: __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 300),height: __designTimeFloat("#436.[1].[2].property.[0].[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2.5)).padding(.horizontal, __designTimeInteger("#436.[1].[2].property.[0].[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 30)).background(Color.white), alignment: .bottom))
#sourceLocation()
    }
}

typealias StepView = DrillsApp.StepView
typealias StepView_Previews = DrillsApp.StepView_Previews