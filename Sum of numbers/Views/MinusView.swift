//
//  ContentView.swift
//  Sum of numbers
//
//  Created by Yuk Yeung Chao on 2025-01-13.
//


import SwiftUI

struct MinusView: View {
    
    // MARK: Stored properties
    @State var selectFirstNumber : Int = 1
    @State var selectSecondNumber : Int = 1
    
    // MARK: Computed properties
    
    var Minus: Int {
        return selectFirstNumber - selectSecondNumber
    }
    
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Spacer()
                Text("\(selectFirstNumber)")
                    .font(.system(size: 60))
            }
            
            HStack{
                Stepper(value: $selectFirstNumber, label: {
                    Text("Select First Number")
                })
            }
            
            HStack{
                Image(systemName: "minus")
                    .font(.system(size: 60))
                Spacer()
                Text("\(selectSecondNumber)")
                    .font(.system(size: 60))
            }
            
            HStack{
                Stepper(value: $selectSecondNumber, label: {
                    Text("Select Second Number")
                })
            }
            
            HStack{
                Spacer()
                Text("\(Minus)")
                    .font(.system(size: 50))
            }
            
            Spacer()
        }
        
        
    }
    
}
#Preview {
    MinusView()
}

