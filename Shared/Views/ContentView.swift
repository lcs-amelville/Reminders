//
//  ContentView.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: TaskStore
    
   //Controls wheather the add task view is showing
    @State private var showingAddTask = false
    
    var body: some View {
        List(store.tasks) { task in
            taskCell(task: task)
        }
        .navigationTitle("Reminders")
        .toolbar {
        ToolbarItem(placement: .primaryAction) {
            Button("Add") {
                showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            addTask(store: store, showing: $showingAddTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
        
    }
}
