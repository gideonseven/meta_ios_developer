//
//  MenuItem.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//
import Foundation

struct MenuItem: Identifiable, MenuItemProtocol {
    let id = UUID()
    let title: String
    var ingredients: [Ingredient]
    let price: Double
    var ordersCount: Int
    let category : MenuCategory
}
