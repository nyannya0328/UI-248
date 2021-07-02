//
//  ContentView.swift
//  UI-248
//
//  Created by nyannyan0328 on 2021/06/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SplashScreen(imageSize:CGSize(width: 200, height: 200)){
            Home()
            
            
        } titleView: {
            
            Text("Chartty")
                .font(.system(size: 35, weight: .bold))
                .foregroundColor(.white)
            
        } logoView: {
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            
        } navButton: {
            
            
            Image("pro")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
