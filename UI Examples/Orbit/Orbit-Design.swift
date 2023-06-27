//
//  Orbit-Design.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct Orbit_Design: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9471160769, green: 0.7753107548, blue: 0.1903811395, alpha: 1))
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Design")
                    .textCase(.uppercase)
                HStack{
                    Text("Step")
                    Spacer()
                    Text("1")
                }
                .textCase(.uppercase)
                .font(.system(size: 50))
                Spacer()
                
                
                VStack(spacing: 0){
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 2)
                    
                    
                    VStack{
                        Text("test ")
                        Text("test")
                        Spacer()
                        Image(systemName: "arrow.forward.circle")
                        
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    .fontWeight(.thin)
                    .padding()

                }
              
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }

    }
}

struct Orbit_Design_Previews: PreviewProvider {
    static var previews: some View {
        Orbit_Design()
    }
}
