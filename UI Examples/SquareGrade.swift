//
//  SquareGrade.swift
//  GradientArt
//
//  Created by Nicholas Pompea on 5/7/23.
//

import SwiftUI

struct SquareGrade: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)).opacity(0.4)
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                HStack(spacing: 0){
                    Rectangle()
                        .fill(
                            AngularGradient(
                                gradient: Gradient(
                                    colors: [Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)),Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1))]),
                                center: .center,
                                angle: .degrees(45)
                            )
                        )
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 150, height: 150)
                    
                    
                }
                
                HStack(spacing: 0){
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 150, height: 150)
                    
                    
                    Rectangle()
                        .fill(
                            AngularGradient(
                                gradient: Gradient(
                                    colors: [Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1)), Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1))]),
                                center: .center,
                                angle: .degrees(-135)
                            )
                        )
                        .frame(width: 150, height: 150)
                    
                }
                
                
            }
            .padding(40)    }
    }
}

struct SquareGrade_Previews: PreviewProvider {
    static var previews: some View {
        SquareGrade()
    }
}
