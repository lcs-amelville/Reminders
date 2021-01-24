//
//  taskCell.swift
//  Reminders
//
//  Created by Melville, Aidan on 2021-01-23.
//

import SwiftUI

struct taskCell: View {
    
    var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                
                .onTapGesture {
                    print("about to toggle")
                    task.completed.toggle()
                    print("just toggled")
                }
            
            Text(task.description)
        }
    }
}

struct taskCell_Previews: PreviewProvider {
    static var previews: some View {
        taskCell(task: testData[0])
        taskCell(task: testData[1])
    }
}
