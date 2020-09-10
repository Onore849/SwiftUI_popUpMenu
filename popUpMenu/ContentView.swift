//
//  ContentView.swift
//  popUpMenu
//
//  Created by 野澤拓己 on 2020/09/10.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                Text("Add Something")
                    .navigationBarTitle("Home", displayMode: .inline)
                    .navigationBarItems(
                        
                        leading:
                    
                        Image("bg")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle()), trailing:
                            
                        Button(action: {
                            
                            withAnimation{
                                
                                self.show.toggle()
                                
                            }
                            
                        }, label: {
                            
                            Image("menu")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 15, height: 15)
                            
                        })
                )
            }
            
            if self.show {
                
                GeometryReader{ _ in
                    
                    Menu()
                    
                }.background(
                    
                    Color.black.opacity(0.8)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                
                                self.show.toggle()
                            }
                    }
                    
                )

            }
            
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Menu : View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15){
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 12) {
                    
                    Image("Home").renderingMode(.original).resizable().frame(width: 38, height: 35)
                    Text("Home").foregroundColor(.black)
                }
                
            }
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 12) {
                    
                    Image("Profile").renderingMode(.original).resizable().frame(width: 38, height: 35)
                    Text("Profile").foregroundColor(.black)
                }
                
            }
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 12) {
                    
                    Image("Notification").renderingMode(.original).resizable().frame(width: 38, height: 35)
                    Text("Notifications").foregroundColor(.black)
                }
                
            }
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 12) {
                    
                    Image("Settings").renderingMode(.original).resizable().frame(width: 38, height: 35)
                    Text("Settings").foregroundColor(.black)
                }
                
            }
            }.padding().background(Color.yellow)
        .cornerRadius(15)
        
    }
}
