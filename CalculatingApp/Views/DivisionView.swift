//
//  DivisionView.swift
//  CalculatingApp
//
//  Created by Hannu Packalen on 2025-01-13.
//

import SwiftUI

struct DivisionView: View {
    //Mark: stored properties
    @State var firstNumber: Double = 1.0
    
    @State var secondNumber: Double = 2.0
    //Mark: computed properties
    var quotient: Double {
        return firstNumber / secondNumber
    }
    var body: some View {
        VStack (alignment: .trailing) {
            Text("\(firstNumber)")
                .font(.system(size: 96))
            Stepper(value: $firstNumber, label: {
                Text ("First Number Value")
            })
            HStack{
                Text ("/")
                    .font(.system(size: 96))
                Spacer()
                Text("\(secondNumber)")
                    .font(.system(size: 96))
            }
            Stepper(value: $secondNumber, label: {
                Text ("Second Number Value")
            })
            Divider()
                .bold()
            Text("\(quotient)")
                .font(.system(size: 96))
        }
        .padding()
    }
}

#Preview {
    DivisionView()
}
