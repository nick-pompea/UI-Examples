//
//  AnimatingGestures2.swift
//  Playground
//
//  Created by Nicholas Pompea on 2/12/23.
//

import SwiftUI

struct AnimatingGestures2: View {
    
    let letters = Array("Hello SwiftUI")
    @State private var enable: Bool = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0){
            ForEach(0..<letters.count){num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enable ? .blue : .red)
                    .offset(dragAmount)
                    .animation(
                        .default.delay(Double(num) / 20),
                               value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged{ dragAmount = $0.translation }
                .onEnded{ _ in
                    dragAmount = .zero
                    enable.toggle()
                    
                }
            )
    }
}

struct AnimatingGestures2_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures2()
    }
}
