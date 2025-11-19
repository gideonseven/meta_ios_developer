//
//  MockData.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

//food items
let foodMenuItems: [MenuItem] = [
    MenuItem(
            title: "Lemon Pasta",
            ingredients: [.pasta, .tomatoSauce, .spinach],
            price: 10.99,
            ordersCount: 1000,
            category: .food
        ),
        MenuItem(
            title: "Spinach Salad",
            ingredients: [.spinach, .carrot],
            price: 8.50,
            ordersCount: 850,
            category: .food
        ),
        MenuItem(
            title: "Broccoli Pasta",
            ingredients: [.pasta, .broccoli, .tomatoSauce],
            price: 11.99,
            ordersCount: 1200,
            category: .food
        ),
        MenuItem(
            title: "Carrot Soup",
            ingredients: [.carrot, .spinach],
            price: 7.99,
            ordersCount: 650,
            category: .food
        ),
        MenuItem(
            title: "Tomato Pasta",
            ingredients: [.pasta, .tomatoSauce],
            price: 9.99,
            ordersCount: 1500,
            category: .food
        ),
        MenuItem(
            title: "Garden Salad",
            ingredients: [.spinach, .broccoli, .carrot],
            price: 9.50,
            ordersCount: 920,
            category: .food
        ),
        MenuItem(
            title: "Pasta Primavera",
            ingredients: [.pasta, .broccoli, .carrot, .tomatoSauce],
            price: 12.99,
            ordersCount: 1100,
            category: .food
        ),
        MenuItem(
            title: "Veggie Bowl",
            ingredients: [.spinach, .broccoli, .carrot],
            price: 10.50,
            ordersCount: 780,
            category: .food
        ),
        MenuItem(
            title: "Spinach Pasta",
            ingredients: [.pasta, .spinach, .tomatoSauce],
            price: 11.50,
            ordersCount: 950,
            category: .food
        ),
        MenuItem(
            title: "Broccoli Salad",
            ingredients: [.broccoli, .carrot],
            price: 8.99,
            ordersCount: 720,
            category: .food
        ),
        MenuItem(
            title: "Classic Pasta",
            ingredients: [.pasta, .tomatoSauce],
            price: 9.50,
            ordersCount: 1800,
            category: .food
        ),
        MenuItem(
            title: "Carrot Pasta",
            ingredients: [.pasta, .carrot, .tomatoSauce],
            price: 10.99,
            ordersCount: 880,
            category: .food
        )
]


// Drink items (8 items)
let drinkMenuItems: [MenuItem] = [
    MenuItem(
        title: "Fresh Lemonade",
        ingredients: [],
        price: 4.99,
        ordersCount: 2500,
        category: .drink
    ),
    MenuItem(
        title: "Iced Tea",
        ingredients: [],
        price: 3.99,
        ordersCount: 2200,
        category: .drink
    ),
    MenuItem(
        title: "Sparkling Water",
        ingredients: [],
        price: 2.99,
        ordersCount: 1800,
        category: .drink
    ),
    MenuItem(
        title: "Orange Juice",
        ingredients: [],
        price: 5.50,
        ordersCount: 1600,
        category: .drink
    ),
    MenuItem(
        title: "Coffee",
        ingredients: [],
        price: 3.50,
        ordersCount: 3000,
        category: .drink
    ),
    MenuItem(
        title: "Green Tea",
        ingredients: [],
        price: 3.99,
        ordersCount: 1400,
        category: .drink
    ),
    MenuItem(
        title: "Smoothie",
        ingredients: [],
        price: 6.99,
        ordersCount: 1900,
        category: .drink
    ),
    MenuItem(
        title: "Mint Lemonade",
        ingredients: [],
        price: 5.50,
        ordersCount: 1700,
        category: .drink
    )
]

// Dessert items (4 items)
let dessertMenuItems: [MenuItem] = [
    MenuItem(
        title: "Tiramisu",
        ingredients: [],
        price: 7.99,
        ordersCount: 1200,
        category: .dessert
    ),
    MenuItem(
        title: "Chocolate Cake",
        ingredients: [],
        price: 6.99,
        ordersCount: 1500,
        category: .dessert
    ),
    MenuItem(
        title: "Cheesecake",
        ingredients: [],
        price: 7.50,
        ordersCount: 1300,
        category: .dessert
    ),
    MenuItem(
        title: "Panna Cotta",
        ingredients: [],
        price: 6.50,
        ordersCount: 900,
        category: .dessert
    )
]
