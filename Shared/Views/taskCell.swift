//
//  taskCell.swift
//  Reminders
//
//  Created by Melville, Aidan on 2021-01-23.
//

import SwiftUI

struct taskCell: View {
    
   @ObservedObject var task: Task
    
    var taskColor : Color {
        switch task.priority {
        case .high:
            return Color.red
        case .medium:
            return Color.blue
        case .low:
        return Color.primary
        }
    }
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                
                .onTapGesture {
                    task.completed.toggle()
                    
                }
            Text(task.description)
        }
        .foregroundColor(self.taskColor)
            
        }
    }


struct taskCell_Previews: PreviewProvider {
    static var previews: some View {
        taskCell(task: testData[0])
        taskCell(task: testData[1])
    }
}
