//
//  OnlineBanking_Accounts_Item.swift
//  UI Examples
//
//  Created by Nicholas Pompea on 6/24/23.
//

import SwiftUI

struct OnlineBanking_Accounts_Item: View {
    let title: String
    let subtitle: String
    let price: String
    let image: String
    
    
    var body: some View {
        HStack{
            Image(systemName: image)
                .font(.system(size: 40))
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            
            let firstLetter = price.prefix(3)
            let remainingText = price.dropFirst(3)
            
            Text(String(firstLetter))
                .bold()
                + Text(String(remainingText))
        }   
        
    }
}

struct OnlineBanking_Accounts_Item_Previews: PreviewProvider {
    static var previews: some View {
        OnlineBanking_Accounts_Item(title: "Apple TV", subtitle: "Streaming Service", price: "-$9.00", image: "appletv.fill")
    }
}
