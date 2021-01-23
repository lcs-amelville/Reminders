//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Melville, Aidan on 2021-01-23.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
    
}


let testData = [
    Task(description: "Grow Long Hair", priority: .high, completed: true),
    Task(description: "Get modeling Contract", priority: .medium, completed: false),
    Task(description: "Retire from teaching", priority: .low, completed: false),
]
