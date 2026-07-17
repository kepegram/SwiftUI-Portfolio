//
//  ProjectCard.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/17/26.
//

import SwiftUI

struct ProjectCard: View {
    let project: ProjectSummary

    var body: some View {
        RoundedRectangle(cornerRadius: 22)
            .fill(Color(.secondarySystemBackground))
            .frame(height: 130)
            .overlay {
                VStack(spacing: 14) {
                    Image(systemName: project.icon)
                        .font(.system(size: 30))

                    Text(project.title)
                        .font(.headline)
                        .multilineTextAlignment(.center)

                    Text(project.subtitle)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
    }
}

#Preview {
    let sample = ProjectSummary.catalog.first ?? ProjectSummary(title: "Sample", subtitle: "Preview", icon: "star.fill")
    ProjectCard(project: sample)
        .padding()
}
