//
//  ToDoItem.swift
//  toDoListFixed
//
//  Created by Michelle Elias Flores on 5/23/23.
//

import Foundation
class ToDoItem: Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

