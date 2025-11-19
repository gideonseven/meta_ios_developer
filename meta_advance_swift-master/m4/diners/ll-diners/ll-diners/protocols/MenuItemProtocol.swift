//
//  MenuItemProtocol.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

import Foundation

protocol MenuItemProtocol  {
    
    //READ ONLY  ( getter only )
    var id: UUID {get}
    var price: Double {get}
    var title: String {get}
    var category: MenuCategory {get }
    
    // READ WRITE properties (getter and setter ) 
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}
