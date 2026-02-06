import Foundation
import CoreData

// this is Dish Extension Class
extension Dish {
    static func createDishesFrom(menuItems: [MenuItem], _ context: NSManagedObjectContext) {
        for item in menuItems {
            let dish = Dish(context: context)
            dish.name = item.title  // ✓ Correct
            dish.price = Float(item.price) ?? 0.0
        }
        
        do {
            try context.save()
        } catch {
            print("Error saving dishes: \(error)")
        }
    }
}
