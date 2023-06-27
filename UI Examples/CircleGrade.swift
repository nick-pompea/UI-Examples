//
//  CircleGrade.swift
//  GradientArt
//
//  Created by Nicholas Pompea on 5/7/23.
//

import SwiftUI

struct CircleGrade: View {
    @State var angle1: Angle = Angle(degrees: 0)

    var body: some View {
        ZStack{
          
                    AngularGradient(
                        gradient: Gradient(
                            colors: [Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1)), Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1))]),
                        center: .center,
                        angle: .degrees(90))
                    .ignoresSafeArea()
                    .blur(radius: 150)
            
            
            VStack(spacing: 0){
//                RorateView()
//                RorateView()


                Circle()
                    .fill(
                        AngularGradient(
                            gradient: Gradient(
                                colors: [Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)),Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1))]),
                            center: .center,
                            angle: .degrees(90)
                           // angle: angle
                        )
                    )
                    .rotationEffect(angle1)


                
                Circle()
                    .fill(
                        AngularGradient(
                            gradient: Gradient(
                                colors: [Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1)), Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1))]),
                            center: .center,
                            angle: .degrees(90)
                        )
                    )
                    .rotationEffect(Angle(degrees: 180))
                    .rotationEffect(angle1 * -1)


                
                
            }
            .padding(40)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        angle1 = value
                    }
                    .onEnded({ value in
                        withAnimation(.spring()){
                            angle1 = Angle(degrees: 0)
//                            angle1 = value
                        }
                    })
            )
        }
    }
}

struct CircleGrade_Previews: PreviewProvider {
    static var previews: some View {
        CircleGrade()
    }
}
