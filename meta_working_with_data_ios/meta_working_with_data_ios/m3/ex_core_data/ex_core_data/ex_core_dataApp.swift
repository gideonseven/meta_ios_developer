//
//  ex_core_dataApp.swift
//  ex_core_data
//
//  Created by gideon tobing on 21/11/2025.
//

import SwiftUI
import CoreData

@main
struct ex_core_dataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
