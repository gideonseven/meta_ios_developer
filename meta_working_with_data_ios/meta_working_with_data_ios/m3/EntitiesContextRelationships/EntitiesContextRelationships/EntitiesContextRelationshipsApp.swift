//
//  EntitiesContextRelationshipsApp.swift
//  EntitiesContextRelationships
//
//  Created by gideon tobing on 21/11/2025.
//

import SwiftUI
import CoreData

@main
struct EntitiesContextRelationshipsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
