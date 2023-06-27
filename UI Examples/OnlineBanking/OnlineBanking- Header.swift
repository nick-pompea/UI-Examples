//
//  OnlineBanking- Header.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking__Header: View {
    let name:String
    let background = RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 79)
    
    
    
    var body: some View {
        HStack{
//            Text("Hello, \n\(name)👋🏻")
            Text("Hello, \(name)👋🏻")
                .font(.title2)
                .foregroundColor(Color.white)
                .bold()
            
            Spacer()
            
            Circle()
                .fill(background)
                .clipShape(Circle())
                .frame(width: 70)
                .overlay {
           Image(systemName: "person.crop.circle.badge")
//                        .font(.system(size: 40))
                        .font(.title)
                        .foregroundColor(Color.white)
                }
        }
        
    }
}

struct OnlineBanking__Header_Previews: PreviewProvider {
    static var previews: some View {
        OnlineBanking__Header(name: "Daisy")
    }
}
