//
//  Home.swift
//  UI-248
//
//  Created by nyannyan0328 on 2021/06/30.
//

import SwiftUI


struct Home: View {
    @State var currentTab = "TABS"
    @Namespace var animation
    var body: some View {
        VStack(spacing:0){
            
            HStack(spacing:0){
                
                TabButton(title: "TABS", currentTab: $currentTab, animation: animation)
                
                TabButton(title: "SETTINGS", currentTab: $currentTab, animation: animation)
                
                TabButton(title: "PERSON", currentTab: $currentTab, animation: animation)
                
                
                
            }
           
            .padding(.top,20)
            .background(Color("c1"))
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                
                VStack(spacing:15){
                    
                    
                    ForEach(1...6,id:\.self){index in
                        
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width - 10, height: 250)
                            .cornerRadius(10)
                        
                        
                        
                    }
                    
                }
                .padding()
                .padding(.bottom,70)
                
                
            }
            
            
        }
        .background(.quaternary)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct TabButton : View{
    
    
    var title : String
    @Binding var currentTab : String
    var animation : Namespace.ID
    var body: some View{
        
        Button {
            withAnimation{
                
                currentTab = title
                
                
            }
        } label: {
            
            VStack{
                
                
                Text(title)
                    .font(.title2)
                    .foregroundColor(.white)
                
                
                ZStack{
                    
                    
                    if currentTab == title{
                        
                        Capsule()
                            .fill(Color.green)
                            .frame(height: 3.5)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                            
                        
                        
                    }
                    
                    else{
                        Capsule()
                            .fill(Color.clear)
                            .frame(height: 3.5)
                        
                        
                        
                        
                    }
                    
                }
                
                
                
            }
            
            
            
        }

        
        
    }
}
