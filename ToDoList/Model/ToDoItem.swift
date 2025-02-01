//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-02-01.
//

import SwiftUI

struct ToDoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let exampleItems = [
    ToDoItem(title:"Study for Chemistry Quiz",
             done: false)
    ,
    ToDoItem(title: "Finish Computer Science Assignment",
             done:true)
    ,
    ToDoItem(title: "Go for a run around campus",
             done:false)
    ,
]
