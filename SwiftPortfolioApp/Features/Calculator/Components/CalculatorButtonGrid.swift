//
//  CalculatorButtonGrid.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//

import SwiftUI

struct CalculatorButtonGrid: View {
    let action: (String) -> Void
    let selectedOperation: CalculatorOperation?

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(spacing: 12) {
            ForEach(CalculatorButtonItem.buttons.indices, id: \.self) { row in
                if CalculatorButtonItem.buttons[row].count == 3 {
                    GeometryReader { geometry in
                        let standardButtonWidth = (geometry.size.width - 36) / 4
                        let expandedButtonWidth = (geometry.size.width - standardButtonWidth - 24) / 2

                        HStack(spacing: 12) {
                            CalculatorButtonView(
                            button: CalculatorButtonItem.buttons[row][0],
                            isSelected: isSelectedOperator(CalculatorButtonItem.buttons[row][0]),
                            action: action
                            )
                            .frame(width: expandedButtonWidth)

                            CalculatorButtonView(
                            button: CalculatorButtonItem.buttons[row][1],
                            isSelected: isSelectedOperator(CalculatorButtonItem.buttons[row][1]),
                            action: action
                            )
                            .frame(width: expandedButtonWidth)

                            CalculatorButtonView(
                            button: CalculatorButtonItem.buttons[row][2],
                            isSelected: isSelectedOperator(CalculatorButtonItem.buttons[row][2]),
                            action: action
                            )
                            .frame(width: standardButtonWidth)
                        }
                    }
                    .frame(height: 72)
                } else {
                    LazyVGrid(columns: columns, spacing: 12) {
                        ForEach(CalculatorButtonItem.buttons[row]) { button in
                            CalculatorButtonView(
                                button: button,
                                isSelected: isSelectedOperator(button),
                                action: action
                            )
                        }
                    }
                }
            }
        }
    }

    private func isSelectedOperator(_ button: CalculatorButtonItem) -> Bool {
        switch button.title {
        case "+":
            selectedOperation == .addition
        case "-":
            selectedOperation == .subtraction
        case "×":
            selectedOperation == .multiplication
        case "÷":
            selectedOperation == .division
        default:
            false
        }
    }
}

#Preview {
    CalculatorButtonGrid(action: { _ in }, selectedOperation: .addition)
        .padding()
}
