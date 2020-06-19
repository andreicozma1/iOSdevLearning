//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Andrei Cozma on 6/4/20.
//  Copyright © 2020 Andrei Cozma. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var display_t: String = "0"
    
    @State var left: Double? = 0
    @State var right: Double? = nil
    
    var body: some View {
       
        VStack{
            
            Button(action:{
                print("Clicked result view: " + self.display_t)
                let formatter = NumberFormatter()
                formatter.numberStyle = .decimal
                let str: String = formatter.string(for: Double(self.display_t))!
                if(str.count < 13){
                    self.display_t = str
                }
            }){
                Text(self.display_t).font(Font.system(size: 40))
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
    
    @State var prev_state: String = ""
    @State var cleared: Bool = false;
    
    func buildCalcButton(text: String) -> some View {
        return Button(action: {
            print("Clicked: \(text)")
           
            switch(text){
                case "/", "*", "-","+", "%":
                    print("\(self.cleared) and \(self.left)")
                    if(self.cleared && self.left != nil && self.prev_state != ""){
                        let num = Double(self.display_t)
                        
                        print("Performing: \(self.left) \(self.prev_state) \(num)")
                        switch(self.prev_state){
                        case "/":
                            self.left! /= num!
                            break
                        case "*":
                            self.left! *= num!
                            break
                        case "-":
                            self.left! -= num!
                            break
                        case "+":
                            self.left! += num!
                            break
                        case "%":
                            // TODO - check if period
                            if(!self.display_t.contains(".")){
                                self.left = Double(Int(self.left!) % Int(num!))
                            }
                            break
                        default:
                            break
                        }
                        if(!self.display_t.contains(".") || self.prev_state != "%"){
                            self.display_t = String(format:"%.8f", self.left!)
                        }
                        self.cleared = false
                    } else{
                        print("NOT recalculating")
                        self.left = Double(self.display_t) ?? 0
                        if(self.left == 0){
                            self.cleared = true
                        }
                    }
                    self.prev_state = text
                
                    break
                case "=":
                    print("cleared = \(self.cleared) and left = \(self.left) and prev_state = \(self.prev_state)")
                    if(self.cleared && self.left != nil && self.prev_state != ""){
                        print("Should calculate")
                        let num = Double(self.display_t)
                        
                        print("Performing: \(self.left) \(self.prev_state) \(num)")
                        switch(self.prev_state){
                        case "/":
                            self.left! /= num!
                            break
                        case "*":
                            self.left! *= num!
                            break
                        case "-":
                            print("HERE")
                            self.left! -= num!
                            break
                        case "+":
                            self.left! += num!
                            break
                        case "%":
                            // TODO - check if period
                            if(!self.display_t.contains(".")){
                                self.left = Double(Int(self.left!) % Int(num!))
                            }
                            break
                        default:
                            break
                        }
                        
                        if(!self.display_t.contains(".") || self.prev_state != "%"){
                            if(String(self.left!).count >= 13){
                                let formatter = NumberFormatter()
                                formatter.numberStyle = .scientific
                                self.display_t = formatter.string(for: self.left!)!
                            } else {
                                self.display_t = String(self.left!)
                            }
                            
                        }
                        self.prev_state = "="
                        self.cleared = false
                    }
                break
                case "C":
                    self.prev_state = ""
                    self.display_t = "0"
                    self.left = 0
                    self.right = nil
                    self.cleared = false
                    break
                case "+/-":
                    if(self.display_t.count > 0){
                        if(self.display_t[self.display_t.startIndex] == "-"){
                            self.display_t = String(self.display_t[self.display_t.index(self.display_t.startIndex, offsetBy: (1))...])
                        } else{
                            self.display_t = "-" + self.display_t
                        }
                    }
                    

                    break

                case "?":
                    break
                case ".":
                    if(self.prev_state != ""){
                        print("Clearing")
                        self.display_t = "0"
                        self.cleared = true
                    }
                    if(!self.display_t.contains(".")){
                        self.display_t += text
                    }
                        
                    break
                default:
                    print("\(self.prev_state) and \(self.cleared)")
                    if((self.prev_state != "" && !self.cleared) || self.display_t == "0"){
                        if(self.display_t != "0"){
                             self.cleared = true;
                        }
                        self.display_t = ""

                    }
                    if(self.prev_state == "="){
                        self.cleared = false
                        self.prev_state = ""
                    }
                    
                    if(self.display_t.count < 13){
                        self.display_t += text
                    }
            
                    
                    break
            }

        }) {
            Text(text).foregroundColor(Color.white)
                .frame(width: 80, height:80)
        }
        .buttonStyle(CalcButtonStyle())
    }
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
