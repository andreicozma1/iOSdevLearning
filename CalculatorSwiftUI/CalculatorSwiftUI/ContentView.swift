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
                buildCalcButton(text: "C")
                
                buildCalcButton(text: "+/-")
                
                buildCalcButton(text: "%")
                
                buildCalcButton(text: "/")
            }.padding(3)
            
            HStack{
                buildCalcButton(text: "7")
                
                buildCalcButton(text: "8")
                
                buildCalcButton(text: "9")
                
                buildCalcButton(text: "*")
                
            }.padding(3)
            
            HStack{
                buildCalcButton(text: "4")
                
                buildCalcButton(text: "5")
                
                buildCalcButton(text: "6")
                
                buildCalcButton(text: "-")
            }.padding(3)
            
            HStack{
                buildCalcButton(text: "1")
                
                buildCalcButton(text: "2")
                
                buildCalcButton(text: "3")
                
                buildCalcButton(text: "+")
            }.padding(3)
            
            HStack{
                buildCalcButton(text: "0")
                
               buildCalcButton(text: ".")
                
                buildCalcButton(text: "?")
                
                buildCalcButton(text: "=")
                
            }.padding(3)
        }
    }
}

func buildCalcButton(text: String) -> some View {
    return Button(action: {
        print(text)
    }) {
        Text(text).foregroundColor(Color.white)
            .frame(width: 80, height:80)
    }
    .buttonStyle(CalcButtonStyle())
}


public struct CalcButtonStyle: ButtonStyle{
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label.background(Color.blue).cornerRadius(50)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
