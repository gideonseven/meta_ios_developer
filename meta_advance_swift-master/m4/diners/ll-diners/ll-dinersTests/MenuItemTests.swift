//
//  MenuItemTests.swift
//  ll-dinersTests
//
//  Created by Gideon Tobing on 10/11/2025.
//

import XCTest
@testable import ll_diners // import app to access MenuItem

final class MenuItemTests: XCTestCase {
    
    func testMenuItemTitle() throws {
        
        // Given (Arrange) - set up test data
        let title = "Lemon Pasta"
        
        // When (Act) - Perform the action
        let menuItem = MenuItem(
            title: title,
            ingredients: [.pasta],
            price: 10.99,
            ordersCount: 100,
            category: .food
        )
        
        // Then (Assert) - Check the result
        XCTAssertEqual(menuItem.title, title, " Menu Item title should match initialized value")
    }
    
    
    func testMenuItemIngredients() {
        
        //Given
        let ingredients: [Ingredient] = [.pasta, .tomatoSauce]
        
        //When
        let menuItem = MenuItem(
            title: "Test Item",
            ingredients: ingredients,
            price: 10.99,
            ordersCount: 100,
            category: .food
        )
        
        //Then
        XCTAssertEqual(menuItem.ingredients, ingredients, "Menu Item ingredients should match initial value")
    }
    
}
