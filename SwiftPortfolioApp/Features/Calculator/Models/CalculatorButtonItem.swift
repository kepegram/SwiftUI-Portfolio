//
//  CalculatorButtonItem.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//

import SwiftUI

struct CalculatorButtonItem: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
}

extension CalculatorButtonItem {
    static let buttons: [[CalculatorButtonItem]] = [
        [
            .init(title: "AC", color: .gray),
            .init(title: "+/-", color: .gray),
            .init(title: "%", color: .gray),
            .init(title: "÷", color: .orange)
        ],
        [
            .init(title: "7", color: .secondary),
            .init(title: "8", color: .secondary),
            .init(title: "9", color: .secondary),
            .init(title: "×", color: .orange)
        ],
        [
            .init(title: "4", color: .secondary),
            .init(title: "5", color: .secondary),
            .init(title: "6", color: .secondary),
            .init(title: "-", color: .orange)
        ],
        [
            .init(title: "1", color: .secondary),
            .init(title: "2", color: .secondary),
            .init(title: "3", color: .secondary),
            .init(title: "+", color: .orange)
        ],
        [
            .init(title: "0", color: .secondary),
            .init(title: ".", color: .secondary),
            .init(title: "=", color: .orange)
        ]
    ]
}
