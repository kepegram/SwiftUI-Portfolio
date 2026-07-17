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
        }
    }
}

#Preview {
    DashboardView()
}
