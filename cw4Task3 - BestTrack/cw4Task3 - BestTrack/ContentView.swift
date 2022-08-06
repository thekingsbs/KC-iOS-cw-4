//
//  ContentView.swift
//  cw4Task3 - BestTrack
//
//  Created by Saleh Al Sedrah on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var image = " mark"
    //question mark
    var body: some View {
       
        ZStack {
            
            VStack {
                
                Spacer()
                
                Text("What is the best course?").font(.system(.largeTitle, design: .monospaced)).multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Spacer()
                
                VStack {
               
                Text("iOS")
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .opacity(0.7)
                    .cornerRadius(25)
                    .onTapGesture {
                        image = "ios"
                    }
                Text("GameDev")
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .cornerRadius(25)
                    .onTapGesture {
                        image = "game"
                    }
                
                Text("Web")
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(25)
                    .onTapGesture {
                        image = "web"
                    }
                    
                Text("Android")
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .cornerRadius(25)
                    .onTapGesture {
                        image = "android"
                    }
                }
                .font(.system(.title, design: .monospaced))
            
                Spacer()
                
                
            }
            
            
            
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
