//
//  CalculatorButtonView.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//

import SwiftUI

struct CalculatorButtonView: View {
    let button: CalculatorButtonItem
    let isSelected: Bool
    let action: (String) -> Void

    var body: some View {
        Button {
            action(button.title)
        } label: {
            Text(button.title)
                .font(.title2.weight(.medium))
                .frame(maxWidth: .infinity)
                .frame(height: 72)
                .background(isSelected ? button.color : button.color.opacity(0.18))
                .foregroundStyle(isSelected ? Color.white : button.color)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    CalculatorButtonView(
        button: .init(title: "7", color: .secondary),
        isSelected: false
    ) { _ in }
    .padding()
}
