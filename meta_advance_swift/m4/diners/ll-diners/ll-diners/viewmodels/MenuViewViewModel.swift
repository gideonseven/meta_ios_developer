//
//  MenuViewViewModel.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

import Foundation
import Combine

class MenuViewViewModel: ObservableObject {
    @Published var foods: [MenuItem] = []
    @Published var drinks: [MenuItem] = []
    @Published var desserts: [MenuItem] = []
    
    init() {
        self.foods = foodMenuItems        // Global foodMenuItems → local foods
        self.drinks = drinkMenuItems      // Global drinkMenuItems → local drinks
        self.desserts = dessertMenuItems  // Global dessertMenuItems → local desserts
    }
}
