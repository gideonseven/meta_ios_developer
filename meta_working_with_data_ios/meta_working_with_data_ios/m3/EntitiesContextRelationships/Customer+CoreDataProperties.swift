//
//  Customer+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by gideon tobing on 21/11/2025.
//
//

public import Foundation
public import CoreData


public typealias CustomerCoreDataPropertiesSet = NSSet

extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var fromLocation: Location?
    @NSManaged public var toDessert: Dessert?

}

extension Customer : Identifiable {

}
