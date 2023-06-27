//
//  OnlineBanking-Accounts.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking_Accounts: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 400)
            .overlay {
                VStack(alignment: .leading){
                    HStack(spacing: 0){
                        Text("Transactions")

                        Spacer()
                        
                        Text("Sunday, Nov, 21")
                    }
                        .font(.callout)
                        .padding(10)
                        .foregroundColor(Color.gray)
//                        .background(Color.blue)
                        
                    
                    ScrollView{
                        VStack(spacing: 20){
                            OnlineBanking_Accounts_Item(title: "Apple TV", subtitle: "Streaming Service", price: "-$9.00", image: "appletv.fill")
                            
                            OnlineBanking_Accounts_Item(title: "The Suitcase Hotel", subtitle: "Streaming Service", price: "-$230.76", image: "suitcase.cart.fill")
                            
                            
                            OnlineBanking_Accounts_Item(title: "Fork & Knife Dinning", subtitle: "Streaming Service", price: "-$101.90", image: "fork.knife")
                            
                            
                            OnlineBanking_Accounts_Item(title: "The Wineglass is Half Full Bar", subtitle: "Streaming Service", price: "-$17.30", image: "wineglass.fill")
                            
                        }
                        .padding()
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
    }
}

struct OnlineBanking_Accounts_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                OnlineBanking_Accounts()

            }

        }
    }
}
