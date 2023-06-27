//
//  AnimatedButton.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/27/23.
//

import SwiftUI

struct AnimatedButton: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap Me") {
           // animationAmount += 1
        }
        .padding (50)
        .background (. red)
        .foregroundColor(.white)
        .clipShape (Circle ())
        .overlay(content: {
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation (
                    .easeInOut (duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount
                    )
        })
        .onAppear{
            animationAmount = 2
        }


    }
}

struct AnimatedButton_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButton()
    }
}
