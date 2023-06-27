//
//  Orbit-Button.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct Orbit_Button: View {
    let text: String
    let iteration: Int
//    let destination2: () -> AnyView
    
    
    
    var body: some View {
        
        Button {
        } label: {
            VStack(spacing: 0){
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 2)
                
                
                HStack{
                    Text("\(iteration)  ")
                    Text(text)
                    Spacer()
                    Image(systemName: "arrow.forward.circle")
                    
                }
                .font(.system(size: 30))
                .foregroundColor(Color.black)
                .fontWeight(.thin)
                .padding()
                
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(height: 2)
            }
        }

    }
}

struct Orbit_Button_Previews: PreviewProvider {
    static var previews: some View {
        Orbit_Button(text: "Design", iteration: 1)
    }
}
