//
//  OnlineBanking-CreditCard.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking_CreditCard: View {
    let cardBG = RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9316139817, green: 0.4155068994, blue: 0.1844727099, alpha: 1)), Color(#colorLiteral(red: 0.4336702228, green: 0.4513342381, blue: 0.6365958452, alpha: 1)), Color(#colorLiteral(red: 0.9502754807, green: 0.7817351222, blue: 0.6990899444, alpha: 1))]), center: .top, startRadius: 80, endRadius: 140)
    
    let cardBG2 = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3936747313, green: 0.4820192456, blue: 0.8667215705, alpha: 1)), Color(#colorLiteral(red: 0.9574002624, green: 0.8696879745, blue: 0.8390102386, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
    
    
    var body: some View {
        VStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 20)
                .fill(cardBG)
                .frame(width: 300, height: 200)
                
                .overlay {
                    cardBG2.opacity(0.3)
                        .blendMode(.darken)
                        .cornerRadius(20)
                }
                .overlay {
                    VStack(alignment: .leading){
                        
                        Image(systemName: "creditcard.and.123")
                            .padding(10)

                        
                        Text("Balance")
                            .font(.system(size: 14, weight: .semibold, design: .monospaced))
                            .padding(.leading, 10)
                        
                        Text("$9,123")
                            .font(.system(size: 32, weight: .semibold, design: .monospaced))
                            .padding(.leading, 10)
                        HStack{
                            Text("Card Member Name")
                                .font(.system(size: 14, weight: .semibold, design: .monospaced))
                                
                            Spacer()
                            
                            Text("06/2028")
                                .font(.system(size: 14, weight: .semibold, design: .monospaced))
                                .padding(.trailing, 10)
                            
                        }
                        .padding(.leading, 10)
                        .padding(.top, 30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
        }
        

    }
}

struct OnlineBanking_CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        OnlineBanking_CreditCard()
    }
}
