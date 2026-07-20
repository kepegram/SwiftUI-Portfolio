//
//  CalculatorView.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//

import SwiftUI

struct CalculatorView: View {
    @State private var display = "0"

    var body: some View {
        VStack(spacing: 28) {
            Spacer()
            
            HStack {
                Spacer()

                Text(display)
                    .font(.system(size: 64, weight: .light))
                    .lineLimit(1)
                    .minimumScaleFactor(0.4)
            }

            CalculatorButtonGrid { value in
                display = value
            }
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
