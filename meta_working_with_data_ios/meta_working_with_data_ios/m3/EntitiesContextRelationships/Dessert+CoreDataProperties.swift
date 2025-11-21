//
//  Dessert+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by gideon tobing on 21/11/2025.
//
//

public import Foundation
public import CoreData


public typealias DessertCoreDataPropertiesSet = NSSet

extension Dessert {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dessert> {
        return NSFetchRequest<Dessert>(entityName: "Dessert")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: Double
    @NSManaged public var size: Int16

}

extension Dessert : Identifiable {

}
