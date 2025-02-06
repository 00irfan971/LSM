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
                    
                    ScrollView{
                        
                        ZStack{
                            Rectangle().frame(width:361,height:160).cornerRadius(20).foregroundColor(Color("Color2")).overlay(
                                RoundedRectangle(cornerRadius: 20.0).stroke(Color("Color3"), lineWidth: 2)).frame(width: 380)
                            
                            HStack{
                                VStack{
                                    Text("Meditation Series").frame(width:160,alignment: .leading).font(.system(size: 12, weight: .regular, design: .rounded)).foregroundStyle(Color("Color4"))
                                    
                                    Text("Manage your emotion").font(.system(size: 21,weight:.semibold)).foregroundStyle(Color.white).frame(width:160,alignment: .leading)
                                    
                                    HStack(spacing:3){
                                        Image("stat").resizable().frame(width:13,height: 10)
                                        Text("9").foregroundStyle(Color.white).font(.system(size: 12))
                                    }.frame(width:160,alignment: .leading)
                                    
                                    Text("Ranveer Allahbadia").frame(width:160,alignment: .leading).foregroundStyle(Color.white).font(.system(size: 12, weight: .regular, design: .rounded))
                                    
                                    
                                }
                                
                                Spacer()
                                
                                Image("Image1").resizable().frame(width:160,height:120).shadow(radius: 3)
                            }.padding([.leading,.trailing],25)
                        }.padding(.top,10)
                    }.frame(width:380).border(Color.white)
                    
                    
                    
                    
                    Spacer()
                    
            }
        }
        
    }
        
}

#Preview {
    HomeView()
}
