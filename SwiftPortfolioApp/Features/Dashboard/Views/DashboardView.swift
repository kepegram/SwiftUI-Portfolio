//
//  DashboardView.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/17/26.
//

import SwiftUI

struct DashboardView: View {
    private let projects = ProjectSummary.catalog

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    ProjectGrid(projects: projects)
                }
                .padding()
            }
            .navigationTitle("Projects")
            .navigationDestination(for: AppDestination.self) { destination in
                switch destination {
                case .calculator:
                    CalculatorView()
                case .unitConverter:
                    Text("Unit Converter")
                case .notes:
                    Text("Notes")
                case .habitTracker:
                    Text("Habit Tracker")
                case .expenseTracker:
                    Text("Expense Tracker")
                case .weather:
                    Text("Weather")
                case .maps:
                    Text("Maps")
                case .photoGallery:
                    Text("Photo Gallery")
                }
            }
        }
    }
}

#Preview {
    DashboardView()
}
