//
//  ContentView.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: TaskStore
    
   
    
    var body: some View {
        List(store.tasks) { task in
            taskCell(task: task)
        }
        .navigationTitle("Reminders")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
        
    }
}
