//
//  Location+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by gideon tobing on 21/11/2025.
//
//

public import Foundation
public import CoreData


public typealias LocationCoreDataPropertiesSet = NSSet

extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var city: String?
    @NSManaged public var neighborhood: String?
    @NSManaged public var phoneNumber: Int16
    @NSManaged public var toCustomer: Customer?

}

extension Location : Identifiable {

}
