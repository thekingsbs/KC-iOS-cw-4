//
//  ContentView.swift
//  cw4Task2
//
//  Created by Saleh Al Sedrah on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
   
    @State var mark = ""
    @State var grade = ""
    @State var image = "grade"
    @State var comment = ""
    
    
     var body: some View {
       
        ZStack {
            
            Color.yellow
                .opacity(0.4)
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Text("Grade Calculator")
                        .font(.system(.title, design: .monospaced))
                        .padding()
                        //add more things, maybe a calculator pic
                }
                
                Spacer()
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //make it change to show the grade
                
                Spacer()
                
                TextField("Enter your mark", text: $mark).padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack {
                    Image("calculate")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .onTapGesture {
                           
                            let markInt = Int(mark) ?? 0
                            
                            if markInt >= 90 {
                                grade = "A"
                                comment = "Amazing job!"
                                image = "agradee"
                            } else if markInt >= 80 && markInt < 90 {
                                grade = "B"
                                comment = "Close, but not close enough."
                                image = "bgrade"

                            } else if markInt >= 70 && markInt < 80 {
                                grade = "C"
                                comment = "On the right track."
                                image = "cgrade "
                            } else if markInt >= 60 && markInt < 70 {
                                grade = "D"
                                comment = "Try harder next time."
                                image = "dgrade"
                            } else {
                                grade = "F"
                                comment = "Hopeless."
                                image = "fail"
                            }

                    }
                                        
                    Text("Your grade is: \(grade)")
                    Spacer()
                                            
                    Text(comment)
                    Spacer()
              
    
                    
                }
                
                
                
                
                
            }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
