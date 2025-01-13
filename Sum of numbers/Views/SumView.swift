//
//  ContentView.swift
//  Sum of numbers
//
//  Created by Yuk Yeung Chao on 2025-01-13.
//


import SwiftUI

struct SumView: View {
    
    // MARK: Stored properties
    @State var selectFirstNumber : Int = 1
    @State var selectSecondNumber : Int = 1
    
    // MARK: Computed properties
    var plus: Int {
        return selectFirstNumber + selectSecondNumber
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
                Image(systemName: "plus")
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
                Text("\(plus)")
                    .font(.system(size: 60))
            }
            
            Spacer()
        }
        
        
    }
    
}
#Preview {
    SumView()
}

