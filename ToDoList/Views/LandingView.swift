//
//  ContentView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: Stored Properties
    
    //The item currently being added
    @State var newItemDescription: String = ""
    
    //The search test
    @State var searchText: String = ""
    
    //MARK: Computed Properties
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                List{
                    ItemView(
                        title:"Study for Chemistry Quiz",
                        done: false
                    )
                    ItemView(
                        title: "Finish Computer Science Assignment",
                        done:true
                    )
                    ItemView(
                        title: "Go for a run around campus",
                        done:false
                    )
   
   

                }
                    .searchable(text:$searchText)
                HStack{
                    TextField("Enter a to-do item", text:$newItemDescription)
                    Spacer()
                    Button{
                        
                    }label:{
                        Text("ADD")
                    }
                }
                    .padding(20)
            }
            .navigationTitle("To do")
        }
   
  
    }
}

#Preview {
    LandingView()
}


