//
//  ExploreSheetView.swift
//  LSM
//
//  Created by Irfan on 08/02/25.
//

import SwiftUI

struct ExploreSheetView: View {
    
    let gridItems2 = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @Binding var sheet:Bool
    var body: some View {
        ZStack{
            Color("Color8").ignoresSafeArea()
            
            VStack{
                HStack{
                    Text("Select max 3 shortcuts").foregroundStyle(.white).font(.system(size: 22,weight:.semibold))
                    
                    Spacer()
                    
                    Button(action:{
                        sheet=false
                    }){
                        Text("Cancel").foregroundStyle(Color.white).font(.system(size: 12, weight: .regular, design: .rounded))
                    }
                    
                }.padding([.leading,.trailing],20).padding([.top,.bottom],10)
                
                Rectangle().frame(width:360,height:1).foregroundStyle(.white.opacity(0.6))
                
                VStack{
                    LazyVGrid(columns: gridItems2) {
                        
                        ExploreView(img: "Meditation", txt: "Meditation")
                        
                        ExploreView(img: "Workout", txt: "Workout")
                        
                        
                        ExploreView(img: "Moon", txt: "Sleep")
                        
                    }
                    
                }.padding(20)
                
                Rectangle().frame(width:360,height:1).foregroundStyle(.white.opacity(0.6))
                
                VStack{
                    LazyVGrid(columns: gridItems2) {
                        
                        ExploreView(img: "Mantra", txt: "Mantra")
                        
                        ExploreView(img: "Events", txt: "Events")
                        

                        ExploreView(img: "Courses", txt: "Courses")
                        
                        ExploreView(img: "Community", txt: "Community")
                        
                        ExploreView(img: "Timer", txt: "Timer")
                        

                        ExploreView(img: "Affirmation", txt: "Affirmation")
                        
                    }
                    
                }.padding(20)
                
                Button(action:{
                    
                }){
                    ZStack{
                        Rectangle().frame(width:360,height:42).cornerRadius(20).foregroundStyle(Color("Color3"))
                        
                        Text("Save").foregroundStyle(.white).bold()
                    }
                }

            }
        }
    }
}

#Preview {
    ExploreSheetView(sheet: .constant(false))
}
