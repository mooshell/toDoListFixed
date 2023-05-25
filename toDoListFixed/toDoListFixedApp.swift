//
//  toDoListFixedApp.swift
//  toDoListFixed
//
//  Created by Michelle Elias Flores on 5/23/23.
//

import SwiftUI

@main
struct toDoListFixedApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
