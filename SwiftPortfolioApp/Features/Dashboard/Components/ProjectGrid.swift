//
//  ProjectGrid.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/17/26.
//

import SwiftUI

struct ProjectGrid: View {
    let projects: [ProjectSummary]

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(projects) { project in
                NavigationLink(value: project.destination) {
                    ProjectCard(project: project)
                }
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    ProjectGrid(projects: ProjectSummary.catalog)
        .padding()
}
