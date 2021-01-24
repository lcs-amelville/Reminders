//
//  addTask.swift
//  Reminders
//
//  Created by Melville, Aidan on 2021-01-24.
//

import SwiftUI

struct addTask: View {
    
    @ObservedObject var store: TaskStore
    
    
    @State private var description = ""
    @State private var priority = TaskPriority.low
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Description", text: $description)
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)

                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                }
            }
        }
    }
    func saveTask() {
        //Add the details of the task to store
        store.tasks.append(Task(description: description,
                                priority: priority,
                                completed: false))
        
        //Dismiss this view
        showing = false
        
    }
}

struct addTask_Previews: PreviewProvider {
    static var previews: some View {
        addTask(store: testStore, showing: .constant(true))
    }
}
