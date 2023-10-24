//
//  ContentView.swift
//  Multiply
//
//  Created by Phillip Mantatsky on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("First Number")
                .font(.custom("Ariel", size: 40)).bold()
            TextField("Enter a number", text:$firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .multilineTextAlignment(.center)
            
                .frame(width: 200, height: 30, alignment: .center)
            
                .font(.body)
            
                .padding()
            
            Text("X")
                .font(.custom("Ariel", size: 50)).bold()
                .frame(width: 200, height: 90, alignment: .center)
            Text("Second Number")
                .font(.custom("Ariel", size: 40)).bold()
            
            TextField("Enter a number", text:$secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
            
                .font(.body)
            
                .padding()
            Button("Calculate"){
                if let firstNumber = Int(firstNumberTextField){
                    if let secondNumber = Int(secondNumberTextField){
                        calculation = firstNumber * secondNumber
                        
                        if calculation == 64
                        {
                            imageName = "DK"
                        }
                           else if calculation % 2 == 0
                            {
                                imageName = "DkFun"
                            }
                       else
                        {
                           imageName = "mouse"
                       }
                        }
                            
                    }
                }
            
            Text("\(calculation)")
                .frame(width: 200, height: 60, alignment: .center)
                .font(.custom("Ariel", size: 40)).bold()
            Spacer()
            
            Image(imageName)
                .resizable()
    .frame(width: 300, height: 300, alignment: .center)
                .aspectRatio(contentMode: .fit)
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
