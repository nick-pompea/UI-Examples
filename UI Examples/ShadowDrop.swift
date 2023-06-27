//
//  ShadowDrop.swift
//  Recepies v3 Advanced
//
//  Created by Nicholas Pompea on 1/3/23.
//

import SwiftUI

struct ShadowDrop: View {
    
    let creamColor = Color(#colorLiteral(red: 1, green: 0.9753809571, blue: 0.9227185845, alpha: 1))
    let redColor = Color(#colorLiteral(red: 0.8539013267, green: 0.3703421354, blue: 0.2171132267, alpha: 1))

    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .fill(redColor)
                .frame(width: 200, height: 200)
                .shadow(color: Color.black, radius: 0, x: 7, y: 7)
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(creamColor)
                    .frame(width: 50, height: 50)
                    .overlay {
                        Image(systemName: "archivebox.fill")
                    }
                Text("Title Text")
                    .font(.title3)
                    .foregroundColor(creamColor)
                    .padding(.bottom, 7)
                
                Text("test_UnitTestingViewModel_selectedItem_SaveItem_shouldThrowError_itemNotFound]' passed (0.003 seconds).")
                    .foregroundColor(creamColor)
                    .font(.caption2)
                    .frame(width: 120)
                    
            }
            .padding(19)
            
        }
    }
}

struct ShadowDrop_Previews: PreviewProvider {
    static var previews: some View {
        ShadowDrop()
    }
}

