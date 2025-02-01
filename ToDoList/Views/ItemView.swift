//
//  ItemView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: ToDoItem

    
    var body: some View {
        Label(
            title:  {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            },icon: {
                if currentItem.done == true {
                Image(systemName: "checkmark.circle")
                    //Tap to mark as done
                        .onTapGesture {
                            currentItem.done.toggle()
                        }
                } else {
                    Image(systemName: "circle")
                    //Tap to mark as done
                        .onTapGesture {
                            currentItem.done.toggle()
                        }
                }

            }
        )
    }
}
//#Preview {
//    ItemView(currentItem: Binding.constant(exampleItems[1]))
//}
