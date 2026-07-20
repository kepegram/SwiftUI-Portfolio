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
    let destination: AppDestination
}

extension ProjectSummary {
    static let catalog: [Self] = [
        ProjectSummary(
            title: "Calculator",
            subtitle: "Basic arithmetic",
            icon: "plus.forwardslash.minus",
            destination: .calculator
        ),
        ProjectSummary(
            title: "Unit Converter",
            subtitle: "Length • Weight • Temp",
            icon: "arrow.left.arrow.right",
            destination: .unitConverter
        ),
        ProjectSummary(
            title: "Notes",
            subtitle: "SwiftData notes",
            icon: "note.text",
            destination: .notes
        ),
        ProjectSummary(
            title: "Habit Tracker",
            subtitle: "Track consistency",
            icon: "checkmark.circle",
            destination: .habitTracker
        ),
        ProjectSummary(
            title: "Expense Tracker",
            subtitle: "Manage spending",
            icon: "creditcard",
            destination: .expenseTracker
        ),
        ProjectSummary(
            title: "Weather",
            subtitle: "Live forecasts",
            icon: "cloud.sun.fill",
            destination: .weather
        ),
        ProjectSummary(
            title: "Maps",
            subtitle: "Explore locations",
            icon: "map.fill",
            destination: .maps
        ),
        ProjectSummary(
            title: "Photo Gallery",
            subtitle: "Swift Photos",
            icon: "photo.on.rectangle",
            destination: .photoGallery
        )
    ]
}

