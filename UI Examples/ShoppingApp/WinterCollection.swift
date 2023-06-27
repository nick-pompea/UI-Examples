////
////  WinterCollection.swift
////  Recepies v3 Advanced
////
////  Created by Nicholas Pompea on 1/2/23.
////
//
//import SwiftUI
//import UIKit
//
//// redhat, redhat2.png
//
//struct WinterCollection: View {
//    @State var showExplore: Bool = false
//    let crop = CGRectMake(0, 0, 100, 100 )
//    var body: some View {
//        VStack{
//            // Header
//            HStack{
//                Button {
//                    showExplore.toggle()
//                } label: {
//                    Image(systemName: "square.grid.2x2.fill")
//                        .foregroundColor(Color.black)
//                }
//
//                Spacer()
//                Button {
//                    showExplore.toggle()
//                } label: {
//                    Image(systemName: "bag")
//                        .foregroundColor(Color.black)
//
//                }
//
//            }
//            .font(.title)
//           
//
//            
//            // Body
//            HStack{
//                
//                Image("redhat")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 350, height: 600)
//                   
//                
//                winterText
//                    .padding()
//                        
//                Spacer(minLength: 40)
//   
//            }
//
//            // Footer
//            HStack{
//                Text("New Arrivals")
//                    .font(.system(size: 35, weight: .semibold, design: .serif))
//                    .frame(width: 200)
//
//                Spacer()
//                Circle()
//                    .strokeBorder(.black, lineWidth: 2)
//                    .background(
//                        Circle()
//                            .fill(.clear))
//                    .overlay {
//                        VStack{
//                            Text("Explore")
//                                .font(.system(size: 19, weight: .light, design: .serif))
//                            
//                            Image(systemName: "arrow.right")
//                        }
//                    }
//                    
//            }
//            .frame(height: 120)
//            Spacer()
//        }
//        .padding()
//        .sheet(isPresented: $showExplore) {
//            ExploreView()
//        }
//    }
//}
//
//struct WinterCollection_Previews: PreviewProvider {
//    static var previews: some View {
//        WinterCollection()
//        
//    }
//}
//
//
//extension WinterCollection {
//    
//    private var winterText: some View {
//        Text("Winter Collection")
//            .font(.system(size: 50, weight: .semibold, design: .serif))
//            .kerning(7)
//            .frame(width: 600)
//            .rotationEffect(Angle .degrees(-90))
//            .frame(width: 60)
//           // .background(Color.blue)
//            
//    }
//    
//}
