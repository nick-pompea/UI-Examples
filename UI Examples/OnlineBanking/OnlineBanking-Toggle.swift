//
//  OnlineBanking-Toggle.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking_Toggle: View {
    let items = [
        "house.fill",
        "gearshape.arrow.triangle.2.circlepath",
       "globe.desk.fill",
        "person.fill",

]
    @State var isSelected: String = "house.fill"
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white.opacity(0.8))
            .frame(width: 350, height: 75)
            .overlay {
            
        HStack(spacing: 40){
            ForEach(items, id: \.self) {item in
                Button {
                    print(item)
                    isSelected = item
                    
                } label: {
                    VStack{
                        Image(systemName: item)
                            .font(.system(size: 30))
                            .foregroundColor(isSelected == item ? Color.black : Color.gray.opacity(0.7))
                            .overlay {
                                if isSelected == item {
                                    Text(".")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.black)
                                        .padding(0)
                                        .offset(x: 0, y: 15)
                                }
                                
                                
                            }
                            
                        }
                    }
                }
            }


            
            
            
        }
        
    }
}

struct OnlineBanking_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            VStack{
                OnlineBanking_Toggle()

            }
        }
    }
}
