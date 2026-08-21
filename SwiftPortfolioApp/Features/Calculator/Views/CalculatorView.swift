//
//  CalculatorView.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//

import SwiftUI

struct CalculatorView: View {
    @State private var engine = CalculatorEngine()

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            HStack {
                Spacer()

                Text(engine.display)
                    .font(.system(size: 64, weight: .light))
                    .lineLimit(1)
                    .minimumScaleFactor(0.4)
            }

            CalculatorButtonGrid(action: { value in
                switch value {
                    
                case "AC":
                    engine.clearInput()
                    
                case ".":
                    engine.appendDecimal()
                    
                case "+":
                    engine.selectOperation(.addition)

                case "-":
                    engine.selectOperation(.subtraction)

                case "×":
                    engine.selectOperation(.multiplication)

                case "÷":
                    engine.selectOperation(.division)
                    
                case let digit
                where digit.count == 1 && digit.first?.isNumber == true:
                    engine.appendDigit(digit)

                default:
                    break

                }

            }, selectedOperation: engine.pendingOperation)
        }
        .padding()
        .navigationTitle("Calculator")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CalculatorView()
    }
}
