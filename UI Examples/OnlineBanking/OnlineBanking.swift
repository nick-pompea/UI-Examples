//
//  OnlineBanking.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking: View {

    var body: some View {
        ZStack{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    OnlineBanking__Header(name: "Daisy")
                        .frame(width: 300)
                    
                    OnlineBanking_CreditCard()

                    HStack{
                        OnlineBanking_InfoButtons(color: Color.blue, imageName: "wallet.pass.fill", text: "Tap me")
                        Spacer()
                        OnlineBanking_InfoButtons(color: Color.orange, imageName: "square.and.arrow.up.on.square", text: "View")
                        Spacer()
                        
                        OnlineBanking_InfoButtons(color: Color.white, textColor: Color.black, imageName: "arrow.triangle.2.circlepath.doc.on.clipboard", text: "Exchnage")
                    }
                    .frame(width: 300)
                    
                    OnlineBanking_Accounts()
                        .frame(width: 350)

                }
                VStack{
                    Spacer()
                    OnlineBanking_Toggle()

                }
                
            }
        }
    }
}

struct OnlineBanking_Previews: PreviewProvider {
    static var previews: some View {
        OnlineBanking()
    }
}
