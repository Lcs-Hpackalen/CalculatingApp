//
//  ContentView.swift
//  CalculatingApp
//
//  Created by Hannu Packalen on 2025-01-13.
//

import SwiftUI

struct AdditionView: View {
    //Mark: stored properties
    @State var firstNumber: Int = 1
    
    @State var secondNumber: Int = 2
    //Mark: computed properties
    var sum: Int {
        return firstNumber + secondNumber
    }
    var body: some View {
        VStack (alignment: .trailing) {
            Text("\(firstNumber)")
                .font(.system(size: 96))
            Stepper(value: $firstNumber, label: {
                Text ("First Number Value")
            })
            HStack{
                Text("+")
                .font(.system(size: 70))
                Spacer()
                Text("\(secondNumber)")
                    .font(.system(size: 96))
            }
            Stepper(value: $secondNumber, label: {
                Text ("Second Number Value")
            })
            Divider()
                .bold()
            Text("\(sum)")
                .font(.system(size: 96))
        }
        .padding()
    }
}

#Preview {
    AdditionView()
}
