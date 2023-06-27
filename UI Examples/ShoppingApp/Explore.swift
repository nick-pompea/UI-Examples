////
////  Explore.swift
////  Recepies v3 Advanced
////
////  Created by Nicholas Pompea on 1/2/23.
////
//
////har3.jpg
//
//import SwiftUI
//
//struct ExploreView: View {
//    var body: some View {
//        ZStack{
//            VStack{
//                Image("har3")
//                    .resizable()
//                    .scaledToFit()
//                    .ignoresSafeArea()
//                Spacer()
//            }
//            
//            VStack{
//                VStack{
//                    // header
//                    HStack{
//                        Spacer()
//                        Image(systemName: "heart")
//                            .padding(2)
//                        Image(systemName: "bag.fill")
//                            .padding(2)
//                    }
//                    .font(.title3)
//                    
//                    Spacer()
//                    
//                    // body
//                    HStack{
//                        
//                        VStack(alignment: .leading){
//                            Text("Women's Cap")
//                                .font(.caption)
//                            Text("Red Cap")
//                                .font(.title)
//                            Text("$180.95")
//                                .font(.title3)
//                        }
//                        .bold()
//                        
//                        
//                        Spacer()
//                        
//                        Circle()
//                            .strokeBorder(.black, lineWidth: 2)
//                            .frame(width: 75, height: 75)
//                            .background(
//                                Circle()
//                                    .fill(.black))
//                            .overlay {
//                                Image(systemName: "arrow.right")
//                                    .font(.title2)
//                                    .bold()
//                                    .foregroundColor(.white)
//                                
//                            }
//                            
//                        
//                        
//                    }
//                    .padding(35)
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color.gray.opacity(0.5))
//                        .frame(height: 200)
//                    
//                        
//                    
//                }
//                .padding()
//            }
//        }
//    }
//}
//
//struct Explore_Previews: PreviewProvider {
//    static var previews: some View {
//        ExploreView()
//    }
//}
