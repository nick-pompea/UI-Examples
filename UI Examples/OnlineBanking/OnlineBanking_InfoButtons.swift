//
//  OnlineBanking_InfoButtons.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking_InfoButtons: View {
//    let color: Color = Color.blue
//    let imageName: String = "wallet.pass.fill"
//    let text: String = "Tap me"
    
    let color: Color
    let textColor: Color
    let imageName: String
    let text: String
    
    init(color: Color, textColor: Color = Color.white, imageName: String, text: String) {
        self.color = color
        self.textColor = textColor
        self.imageName = imageName
        self.text = text
    }
    
    var body: some View {
        VStack{
            Button {
                print("Button pressed")
            } label: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(color)
                    .frame(width: 90, height: 90)
                    .overlay {
                        VStack{
                            Image(systemName: imageName)
                                .frame(width: 30, height: 30)
                            
                            Text(text)
                                .font(.headline)
                                .padding(5)
                        }
                        .foregroundColor(textColor)

                    }
            }
        }
    }
}

struct OnlineBanking_InfoButtons_Previews: PreviewProvider {
    static var previews: some View {
        OnlineBanking_InfoButtons(color: Color.blue, textColor: Color.white, imageName: "wallet.pass.fill", text: "Tap me")
    }
}
