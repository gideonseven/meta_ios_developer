//
//  Dish+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by gideon tobing on 21/11/2025.
//
//

public import Foundation
public import CoreData


public typealias DishCoreDataPropertiesSet = NSSet

extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: Double
    @NSManaged public var size: Int16

}

extension Dish : Identifiable {

}
