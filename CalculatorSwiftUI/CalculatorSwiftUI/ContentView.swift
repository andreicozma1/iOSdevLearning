//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Andrei Cozma on 6/4/20.
//  Copyright © 2020 Andrei Cozma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Button(action:{
                print("Clicked result view")
            }){
                Text("0").font(Font.system(size: 40))
                    .multilineTextAlignment(.trailing)
                    .lineLimit(1)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80, maxHeight: 80, alignment: .trailing)
                    .padding(EdgeInsets(top:0, leading:10, bottom:0,trailing:10))
            }
            .background(Color.blue)
            .cornerRadius(15)
            .padding()
            
            HStack{
                Button(action: {
                    print("C")
                }) {
                    Text("C")
                        .foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("+/-")
                }) {
                    Text("+/-").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("%")
                }) {
                    Text("%").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("/")
                }) {
                    Text("/").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
            }.padding(3)
            
            HStack{
                Button(action: {
                    print("7")
                }) {
                    Text("7").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("8")
                }) {
                    Text("8").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("9")
                }) {
                    Text("9").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("*")
                }) {
                    Text("*").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
            }.padding(3)
            
            HStack{
                Button(action: {
                    print("4")
                }) {
                    Text("4").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("5")
                }) {
                    Text("5").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("6")
                }) {
                    Text("6").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("-")
                }) {
                    Text("-").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
            }.padding(3)
            
            HStack{
                Button(action: {
                    print("1")
                }) {
                    Text("1").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("2")
                }) {
                    Text("2").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("3")
                }) {
                    Text("3").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("+")
                }) {
                    Text("+").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
            }.padding(3)
            
            HStack{
                Button(action: {
                    print("0")
                }) {
                    Text("0").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print(".")
                }) {
                    Text(".").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("?")
                }) {
                    Text("?").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
                Button(action: {
                    print("=")
                }) {
                    Text("=").foregroundColor(Color.white)
                        .frame(width: 80, height:80)
                }
                .background(Color.blue)
                .cornerRadius(50)
                
            }.padding(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
