//
//  Orbit.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

//struct navViewItems: Hashable {
//let title: String
//let Link: () -> AnyView
//}

struct Orbit: View {
    
    
    
    private var items = [
//        navViewItems(title: "Design", Link: { AnyView(Orbit_Design()) }),
//        navViewItems(title: "Design", Link: { AnyView(Orbit_Design()) })
    "Design",
    "Research",
    "Development",
    "Testing",
    "Assemble",
    ]
    
    
   
    
    @State private var iterationItem2: Int = 1

    var body: some View {
        NavigationStack{
            
            ZStack{
                Color.gray.opacity(0.5)
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Text("Mission")
                        .textCase(.uppercase)
                    Text("Five Steps \nto Launch")
                        .textCase(.uppercase)
                        .font(.system(size: 50))
                    Spacer()
                    ForEach(items, id: \.self) {item in
                        Orbit_Button(text: item, iteration: (items.firstIndex(of: item) ?? 1) + 1)
                        
                    }
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            
            
        }
        
    }
}

struct Orbit_Previews: PreviewProvider {
    static var previews: some View {
        Orbit()
    }
}
