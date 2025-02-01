//
//  ItemView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    let title: String
    let done: Bool
    var body: some View {
        Label(
            title:  {
                Text(title)
            },icon: {
                if done == true {
                Image(systemName: "checkmark.circle")
                } else {
                    Image(systemName: "circle")
                }
                
            }
        )
    }
}
#Preview {
    ItemView(title: "Test", done:true)
}
