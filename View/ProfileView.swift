//
//  ProfileView.swift
//  LSM
//
//  Created by Irfan on 07/02/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State var Selected:Int
    var body: some View {
        ZStack{
            Color("Color").ignoresSafeArea()
            
            VStack{
                //User
                
                HStack{
                    Text("S").frame(width:69,height:69).background(Color.green.opacity(0.3)).cornerRadius(35).font(.system(size: 40)).foregroundStyle(Color.white)
                    
                    
                    VStack{
                        HStack{
                            Text("Sourav").foregroundStyle(.white).font(.system(size:22,weight: .regular))
                            
                            
                            Image("prof1")
                        }.frame(width:160,alignment: .leading)
                        
                        Text("Level Premium User").foregroundStyle(Color.yellow).font(.system(size: 14)).frame(width:160,alignment: .leading)
                        
                    }
                    Spacer()
                    Image(systemName: "gear").resizable().frame(width:26,height:26).foregroundStyle(Color.white)
                }.padding([.trailing,.leading],20)
                
                //Streak
                
                HStack{
                    
                    
                    ZStack{
                        Rectangle().frame(width:180,height:60).cornerRadius(15).foregroundColor(Color("Color")).overlay(
                            RoundedRectangle(cornerRadius: 15.0).stroke(Color.gray.opacity(0.4), lineWidth: 1)).frame(width: 180)
                        
                        HStack(spacing:14){
                            Image("tg1").resizable().frame(width:28,height:28).padding(.leading,12)
                            
                            VStack{
                                Text("17").frame(width:70,alignment: .leading).foregroundStyle(Color.white)
                                Text("Day Streak").foregroundStyle(Color.gray).font(.system(size: 14))
                            }
                            
                            Spacer()
                        }.frame(width: 180)
                    }
                    
                    ZStack{
                        Rectangle().frame(width:180,height:60).cornerRadius(15).foregroundColor(Color("Color")).overlay(
                            RoundedRectangle(cornerRadius: 15.0).stroke(Color.gray.opacity(0.4), lineWidth: 1)).frame(width: 180)
                        
                        HStack(spacing:14){
                            Image("tg2").resizable().frame(width:28,height:28).padding(.leading,12)
                            
                            VStack{
                                Text("#04").frame(width:70,alignment: .leading).foregroundStyle(Color.white)
                                Text("Gold League").foregroundStyle(Color.gray).font(.system(size: 14))
                            }
                            
                            Spacer()
                        }.frame(width: 180)
                    }
                    
                }
                
                HStack(spacing:0){
                    VStack{
                        Text("My Library").foregroundStyle(.white)
                        
                        Rectangle().frame(width:200,height:1).foregroundStyle(.white)
                    }
                    
                    VStack{
                        Text("Insights").foregroundStyle(.white)
                        
                        Rectangle().frame(width:200,height:1).foregroundStyle(.white)
                    }.foregroundStyle(.gray)
                }.padding(.top,10)
                
                ScrollView{
                    //Recently Played
                    HStack{
                        Text("Recently Played").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                        
                        Spacer()
                        
                        Text("See All").foregroundStyle(Color.gray).font(.system(size: 12, weight: .semibold, design: .rounded))
                        
                    }.padding([.leading,.trailing],20).padding([.top,.bottom],10)
                    
                    ScrollView(.horizontal){
                        
                        HStack(spacing:10){
                            
                            RecView(Item: "Meditation", Name: "Workplace Anxiety", Author: "Avi Arya",img:"RecImage1")
                            
                            RecView(Item: "Meditation", Name: "Workplace Anxiety", Author: "Avi Arya",img:"RecImage1")

                            
                            RecView(Item: "Meditation", Name: "Workplace Anxiety", Author: "Avi Arya",img:"RecImage1")

                        }.padding(.leading,20).padding([.bottom],20)
 
                }
                    
                    //Menu
                    VStack{
                        
                        Profile1View(txt: "My Favorite", img: "Prof5")
                        
                        Profile1View(txt: "Downloads", img: "Prof2")
                        
                        Profile1View(txt: "My Playlists", img: "Prof3")
                        
                        Profile1View(txt: "My Journal Entries", img: "Prof4")
                    }
                    
                    HStack{
                        Text("Made Mindfully in ").foregroundStyle(Color("Color7")).font(.system(size: 14,weight: .regular))
                        Image("Flag").resizable().frame(width:16,height:16)
                    }.frame(width:340,alignment: .leading)
                    
                    Text("Clear Mind\nBetter Performance").frame(width:340,alignment: .leading).font(.system(size: 36,weight: .bold)).foregroundStyle(Color("Color7"))

                }

                
            }
        }
    }
}

#Preview {
    ProfileView(Selected: 0)
}

struct Profile1View: View {
    
    var txt:String
    var img:String
    var body: some View {
        HStack{
            
            Image(img)
            
            
            Text(txt).foregroundStyle(.white).font(.system(size: 16))
            Spacer()
            
            Image("arrow1")
            
            
        }.padding([.trailing,.leading],20)
    }
}
