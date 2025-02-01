//
//  ContentView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    
    //MARK: Stored Properties
    
    //The item currently being added
    @State var newItemDescription: String = ""
    
    //The search test
    @State var searchText: String = ""
    
    //Access model context (for addition, deletions, etc.)
    
    //The list of to-do items
    @State var todos: [ToDoItem] = exampleItems
    
    //MARK: Computed Properties
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                List ($todos){ $todo in
                    ItemView(currentItem: $todo)
                    //Delete a to-do item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    deleteItem(todo)
                                }
                            )
                        }
                    
                }
                    .searchable(text:$searchText)
                
                HStack{
                    TextField("Enter a to-do item", text:$newItemDescription)
                    
                    Spacer()
                    
                    Button("ADD"){
                        createToDo(withTitle: newItemDescription)
                    } .font(.caption)
                        .disabled(newItemDescription.isEmpty == true)
                }
                    .padding(20)
            }
            .navigationTitle("To do")
        }
   
  
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        //Create the new to-do item instance
        let todo = ToDoItem(
            title: title,
            done: false
        )
        
        //Append to the array
        todos.append(todo)
    }
    
    func deleteItem(_ todo: ToDoItem){
        
        //Remove the provided to-do item from the array
        //Remove all todos items with id matching given todo id
        todos.removeAll{ currentItem in
            currentItem.id == todo.id
            
        }
    }
}

//#Preview {
//    LandingView()
//}
//

