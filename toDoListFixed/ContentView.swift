//
//  ContentView.swift
//  toDoListFixed
//
//  Created by Michelle Elias Flores on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults <ToDo>
    @State private var showNewTask = false
    var body: some View {
        VStack {
            Text("To Do List")
                .font(.system(size: 40))
                .fontWeight(.black)
            Button(action: {
                self.showNewTask = true
            }) {
                Text("+")
            }
            HStack {
            }
            .padding()
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                .onDelete(perform: deleteTask)
                .listStyle(.plain)
            }}
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, title: "", isImportant: false) }}
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }

