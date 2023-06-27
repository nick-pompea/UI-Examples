//
//  Gradient.swift
//  Recepies v3 Advanced
//
//  Created by Nicholas Pompea on 1/2/23.
//

///Users/nicholaspompea/Desktop/Swift/Recepies v3 Advanced/Recepies v3 Advanced/UI/Gradient.swift:struct GradientView: View {
import SwiftUI

struct GradientView: View {
    @State var solderValueRadius: Double = 1
    @State var solderValueStartRadius: Double = 1000
    @State var color: Color = .red
    var body: some View {
        ZStack{
            
                RadialGradient(
                    gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.09759256989, green: 0.09891804308, blue: 0.1387334764, alpha: 1)),Color(#colorLiteral(red: 0.1390330493, green: 0.3613100648, blue: 0.4014223814, alpha: 1)), Color(#colorLiteral(red: 0.9088061452, green: 0.7057507634, blue: 0.6734826565, alpha: 1)) ]),
                    center: .center,
                    startRadius: solderValueStartRadius,
                    endRadius: solderValueRadius)
                .ignoresSafeArea()
            
        VStack{
            
            
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.09759256989, green: 0.09891804308, blue: 0.1387334764, alpha: 1)),Color(#colorLiteral(red: 0.1390330493, green: 0.3613100648, blue: 0.4014223814, alpha: 1)), Color(#colorLiteral(red: 0.9088061452, green: 0.7057507634, blue: 0.6734826565, alpha: 1)) ]),
                        center: .center,
                        startRadius: solderValueStartRadius,
                        endRadius: solderValueRadius)
                )
                .padding()
            
            
            
            
            
            Text("endRadius")
            Slider(
                value: $solderValueRadius,
                in: 1...300,
                step: 1.0,
                onEditingChanged:
                    { (_) in
                        color = .green
                    },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("300"),
                label: {
                    Text("Title")
                }
            )
            
            Text("startRadius")
            Slider(
                value: $solderValueStartRadius,
                in: 1...1000,
                step: 1.0,
                onEditingChanged:
                    { (_) in
                        color = .green
                    },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("1000"),
                label: {
                    Text("Title")
                }
            )
            
            
            
            
            
            
        }
        
    }
        
    }
}


struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
