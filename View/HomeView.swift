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
                            Rectangle().frame(width:64,height: 44).cornerRadius(25).opacity(0.7)
                            
                            Rectangle().frame(width:103,height:44).cornerRadius(25).opacity(0.7)
                            
                            Spacer()
                            
                            Circle().frame(width:44).opacity(0.7)
                        }.padding([.trailing,.leading],36)
                        
                        Spacer()
                        
                        HStack{
                            Text("Get Started").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                            
                            Spacer()
                        }.padding(.leading,40)
                        
                    }.frame(height: 190).border(Color.black)
                    
                    ScrollView{
                        
                        //First Element in body
                        
                    
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
                        

                        //Explore Section
                        
                        HStack{
                            Text("Explore").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                            
                            Spacer()
                            
                        }.padding(.leading,20).padding([.top,.bottom],10)
                        
                        HStack{
                            ExploreView(img: "Meditation", txt: "Meditation")
                            
                            ExploreView(img: "Workout", txt: "Workout")
                            
                            
                            ExploreView(img: "Moon", txt: "Sleep")
                            
                           
   
                            ZStack{
                                Rectangle().foregroundColor(Color("Color2")).frame(width:82,height:88).cornerRadius(10)
                                
                                VStack(spacing:20){
                                    Image("Vector").resizable().foregroundStyle(Color.white).frame(width:30,height:12)
                                    Text("More").foregroundStyle(Color.white).font(.system(size: 14,weight: .semibold))
                                }
                            }
                        }
                        
                        
                        //Recommended
                        HStack{
                            Text("Recommended For You").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                            
                            Spacer()
                            
                        }.padding(.leading,20).padding([.top,.bottom],10)
                        
                        ScrollView(.horizontal){
                            
                            HStack(spacing:10){
                                
                                RecView(Item: "Meditation", Name: "Freedom Series", Author: "Akhil Aryan",img:"RecImage1")
                                
                                RecView(Item: "Meditation Series", Name: "Freedom Series", Author: "Akhil Aryan",img:"RecImage2")
                                
                                RecView(Item: "Meditation", Name: "Freedom Series", Author: "Akhil Aryan",img:"RecImage1")
                            }.padding(.leading,20).padding([.bottom],10)
  
                        }
                        
                        //Recents
                        HStack{
                            Text("Recents").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                            
                            Spacer()
                            
                            Text("See All").foregroundStyle(Color.white).font(.system(size: 12, weight: .semibold, design: .rounded))
                            
                        }.padding([.leading,.trailing],20).padding([.top,.bottom],10)
                        
                        ScrollView(.horizontal){
                            
                            HStack(spacing:10){
                                
                                RecView(Item: "Meditation", Name: "Freedom Series", Author: "Akhil Aryan",img:"RecImage1")
                                
                                RecView(Item: "Meditation Series", Name: "Freedom Series", Author: "Akhil Aryan",img:"RecImage2")
                                
                                RecView(Item: "Meditation", Name: "Freedom Series", Author: "Akhil Aryan",img:"RecImage1")
                            }.padding(.leading,20).padding([.bottom],10)
  
                        }
                        
                        
                        //Learn Part
                        
                        HStack{
                            Text("Learn").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                            
                            Spacer()
                            
                        }.padding(.leading,20).padding([.top,.bottom],10)
                        
                        ZStack{
                            Rectangle().foregroundColor(Color("Color6")).frame(width:360,height:96).cornerRadius(10)
                            
                            HStack{
                                
                                Image("LearnImage").resizable().frame(width:110,height:70)
                                
                                VStack(spacing:5){
                                    Text("How to Meditate\nLike a Monk").foregroundStyle(.white).font(.system(size: 14,weight:.semibold))
                                    
                                    Text("Read More").foregroundStyle(Color.white).font(.system(size: 12,weight:.light)).frame(width:110,alignment: .leading)
                                }.padding(.trailing,45)
                                
                                
                                ZStack{
                                    Circle().frame(width:50).foregroundColor(Color("Color2"))
                                    
                                    Image("Share")
                                }
                            }
                        }

                        
                        
                        HStack{
                            Text("Featured").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                            
                            Spacer()
                            
                        }.padding(.leading,20).padding([.top,.bottom],10)
                        
                        ZStack{
                            Image("Home").resizable().frame(width:360,height:360).cornerRadius(14).overlay(
                                RoundedRectangle(cornerRadius: 14.0).stroke(Color("Color2"), lineWidth: 3)).frame(width: 360)
                            
                            VStack{
                                
                                Text("Meditation Series").frame(width:320,alignment: .leading).font(.system(size: 12, weight: .regular, design: .rounded)).foregroundStyle(Color("Color4"))
                                
                                Text("Change your thought patterns").font(.system(size: 21,weight:.semibold)).foregroundStyle(Color.white).frame(width:320,alignment: .leading)
                                
                                Spacer()
                                
                                Text("Ranveer Allahbadia").frame(width:320,alignment: .leading).font(.system(size: 12, weight: .semibold, design: .rounded)).foregroundStyle(Color.white)
                                Text("Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.").frame(width:320,alignment: .leading).foregroundStyle(Color.white).font(.system(size: 12, weight: .thin, design: .rounded))
                                
                                HStack{
                                    
                                    ZStack{
                                        Rectangle().frame(width:113,height:34).cornerRadius(25).foregroundColor(Color("Color2"))
                                        
                                        Text("10 Mins").foregroundStyle(Color.white).font(.system(size: 14, weight: .semibold, design: .rounded))
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        Circle().frame(width:36).foregroundStyle(Color.white)
                                        Image("Arrow")
                                    }
                                }.padding([.trailing,.leading],36)
                                
                                
                                //Footer
                                
                                HStack{
                                    Text("Made Mindfully in ").foregroundStyle(Color("Color7")).font(.system(size: 14,weight: .regular))
                                    Image("Flag").resizable().frame(width:16,height:16)
                                }.frame(width:360,alignment: .leading)
                                
                                Text("Clear Mind\nBetter Performance").frame(width:360,alignment: .leading).font(.system(size: 36,weight: .bold)).foregroundStyle(Color("Color7"))
                                
                                
                            }.frame(height: 320)
                        }

                    }.frame(width:380)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Spacer()
                    
            }
        }
        
    }
        
}

#Preview {
    HomeView()
}

struct ExploreView: View {

    var img:String
    var txt:String
    
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(Color("Color2")).frame(width:82,height:88).cornerRadius(10)
            
            VStack(spacing:10){
                Image(img).resizable().frame(width:30,height:30).foregroundStyle(Color.white)
                Text(txt).foregroundStyle(Color.white).font(.system(size: 14,weight: .semibold))
            }
        }
    }
}

struct RecView: View {
    
    var Item:String
    var Name:String
    var Author:String
    var img:String

    var body: some View {
        VStack(spacing:5){
            
            Image(img).resizable().frame(width:160,height:160)
            
            HStack{
                Text(Item).foregroundStyle(Color("Color5")).font(.system(size: 14,weight: .semibold))
                
                //Text("-  \(Time) Mins").foregroundStyle(Color("Color5")).font(.system(size: 14,weight: .semibold))
            }.frame(width:160,alignment: .leading)
            
            Text(Name).foregroundStyle(.white).font(.system(size: 18,weight:.semibold)).frame(width:160,alignment: .leading)
            
            Text(Author).frame(width:160,alignment: .leading).foregroundStyle(Color.white).font(.system(size: 12, weight: .regular, design: .rounded))
            
        }
    }
}
