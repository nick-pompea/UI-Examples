//
//  GradientView2.swift
//  Recepies v3 Advanced
//
//  Created by Nicholas Pompea on 1/2/23.
//

import SwiftUI

struct GradientView2: View {
    @State var solderValueRadius: Double = 40
    @State var solderValueStartRadius: Double = 700
    var body: some View {
        ZStack{
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(
                        colors:  [ Color(#colorLiteral(red: 0.769939363, green: 0.5610067844, blue: 0.5334041715, alpha: 1)),Color(#colorLiteral(red: 0.4748833179, green: 0.3121854067, blue: 0.3077283204, alpha: 1)) ]),
                       // colors:  [ Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) ]),

                        startPoint: .leading,
                        endPoint: .trailing)
                    )

            VStack{
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.09759256989, green: 0.09891804308, blue: 0.1387334764, alpha: 1)),Color(#colorLiteral(red: 0.1390330493, green: 0.3613100648, blue: 0.4014223814, alpha: 1)), Color(#colorLiteral(red: 0.9088061452, green: 0.7057507634, blue: 0.6734826565, alpha: 1)) ]),
//                            gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.09759256989, green: 0.09891804308, blue: 0.1387334764, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.9), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) ]),

                            center: .bottomTrailing,
                            startRadius: solderValueStartRadius,
                            endRadius: solderValueRadius)
                    )
                   
                Spacer()
            }
        }
        .padding(25)
        .background(Color(#colorLiteral(red: 0.8492775559, green: 0.7868564725, blue: 0.6637734771, alpha: 1)).opacity(0.9))
       // .background(Color.black.opacity(0.0))

        
        
        
    }
}

struct GradientView2_Previews: PreviewProvider {
    static var previews: some View {
        GradientView2()
    }
}
