//
//  CalculatorButtonGrid.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//

import SwiftUI

struct CalculatorButtonGrid: View {
    let action: (String) -> Void

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(spacing: 12) {
            ForEach(CalculatorButtonItem.buttons.indices, id: \.self) { row in
                if row == 4 {
                    HStack(spacing: 12) {
                        CalculatorButton(
                            button: CalculatorButtonItem.buttons[row][0],
                            action: action
                        )
                        .frame(maxWidth: .infinity)

                        CalculatorButton(
                            button: CalculatorButtonItem.buttons[row][1],
                            action: action
                        )

                        CalculatorButton(
                            button: CalculatorButtonItem.buttons[row][2],
                            action: action
                        )
                    }
                } else {
                    LazyVGrid(columns: columns, spacing: 12) {
                        ForEach(CalculatorButtonItem.buttons[row]) { button in
                            CalculatorButton(
                                button: button,
                                action: action
                            )
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CalculatorButtonGrid { _ in }
        .padding()
}
