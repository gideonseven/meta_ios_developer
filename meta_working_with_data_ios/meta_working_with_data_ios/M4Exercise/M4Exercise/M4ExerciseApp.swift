import SwiftUI

@main
struct M4ExerciseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            OurDishes()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
