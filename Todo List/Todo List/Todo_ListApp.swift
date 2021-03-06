//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by Loi Pham on 4/10/21.
//

import SwiftUI

@main
struct Todo_ListApp: App {
    let persistenceController = PersistenceController.shared
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
