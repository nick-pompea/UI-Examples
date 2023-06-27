//
//  RorateView.swift
//  GradientArt
//
//  Created by Nicholas Pompea on 5/7/23.
//

import SwiftUI

struct RotationView: View {
    @State var angle: Angle = Angle(degrees: 0)

    var body: some View {
        Circle()
            .fill(
                AngularGradient(
                    gradient: Gradient(
                        colors: [Color(#colorLiteral(red: 0.9484868646, green: 0.7420749664, blue: 0.7506521344, alpha: 1)),Color(#colorLiteral(red: 0.3040785789, green: 0.05824957788, blue: 0.277420789, alpha: 1))]),
                    center: .center,
                    angle: .degrees(90)
                )
            )
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        angle = value
                    }
                    .onEnded({ value in
                        withAnimation(.spring()){
                            angle = Angle(degrees: 0)
                        }
                    })
            )    }
}

struct RotationView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}
