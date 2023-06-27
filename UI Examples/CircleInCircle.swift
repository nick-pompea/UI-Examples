//
//  CircleInCircle.swift
//  GradientArt
//
//  Created by Nicholas Pompea on 5/8/23.
//

import SwiftUI

struct CircleInCircle: View {
    var body: some View {
        ZStack{
            HStack(spacing: 0){
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1)))
//                    .fill(Color.black)
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)))
                
            }
            .ignoresSafeArea()
            ZStack{
                VStack(spacing: 0){
                    Circle()
                        .fill(
                            AngularGradient(
                                gradient: Gradient(
                                    colors: [Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)),Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1))]),
                                center: .center,
                                angle: .degrees(-90)
                            )
                        )
                        .frame(width: 350)
                    Spacer()
                }
                VStack(spacing: 0){
                    Circle()
                        .fill(
                            AngularGradient(
                                gradient: Gradient(
                                    colors: [Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)),Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1))]),
                                center: .center,
                                angle: .degrees(-90)
                            )
                        )
                        .frame(width: 180)
                    Spacer()
                }
            }
        }
    }
}

struct CircleInCircle_Previews: PreviewProvider {
    static var previews: some View {
        CircleInCircle()
    }
}
