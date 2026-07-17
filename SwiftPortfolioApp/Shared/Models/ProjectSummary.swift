//
//  PortfolioProject.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/17/26.
//

import Foundation
import SwiftUI

struct ProjectSummary: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: String
}

extension ProjectSummary {
    static let catalog: [Self] = [
        ProjectSummary(
            title: "Calculator",
            subtitle: "Basic arithmetic",
            icon: "plus.forwardslash.minus"
        ),
        ProjectSummary(
            title: "Unit Converter",
            subtitle: "Length • Weight • Temp",
            icon: "arrow.left.arrow.right"
        ),
        ProjectSummary(
            title: "Notes",
            subtitle: "SwiftData notes",
            icon: "note.text"
        ),
        ProjectSummary(
            title: "Habit Tracker",
            subtitle: "Track consistency",
            icon: "checkmark.circle"
        ),
        ProjectSummary(
            title: "Expense Tracker",
            subtitle: "Manage spending",
            icon: "creditcard"
        ),
        ProjectSummary(
            title: "Weather",
            subtitle: "Live forecasts",
            icon: "cloud.sun.fill"
        ),
        ProjectSummary(
            title: "Maps",
            subtitle: "Explore locations",
            icon: "map.fill"
        ),
        ProjectSummary(
            title: "Photo Gallery",
            subtitle: "Swift Photos",
            icon: "photo.on.rectangle"
        )
    ]
}

