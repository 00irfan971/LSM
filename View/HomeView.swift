//
//  HomeView.swift
//  LSM
//
//  Created by Irfan on 06/02/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Image("Home").resizable().frame(width:437,height: 266)
                
                
                Color("Color")
            }.ignoresSafeArea()
            
            
            VStack{
                
                VStack(){
                    HStack{
                        Rectangle().frame(width:64,height: 44).cornerRadius(25)
                        
                        Rectangle().frame(width:103,height:44).cornerRadius(25)
                        
                        Spacer()
                        
                        Circle().frame(width:44)
                    }.padding([.trailing,.leading],36)
                    
                    Spacer()
                    
                    HStack{
                        Text("Get Started").foregroundStyle(.white).font(.system(size: 25,weight:.semibold))
                        
                        Spacer()
                    }.padding(.leading,40)
                    
                }.frame(height: 190).border(Color.black)
                
                
                

                Spacer()
                
            }
            
        }
    }
}

#Preview {
    HomeView()
}
