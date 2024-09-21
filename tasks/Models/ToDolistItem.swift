//
//  ToDolistItem.swift
//  tasks
//
//  Created by Ruslan Marshaev on 9/12/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
