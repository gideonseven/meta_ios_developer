import UIKit

import Foundation

let recipesJSONString = """

[
    {
        "title": "Apple pie",
        "views": 3847,
        "rating": 4.5
    },
    {
        "title": "Boiled egg",
        "views": 10584,
        "rating": 4.9
    },
    {
        "title": "Bacon roll",
        "views": 5847,
        "rating": 3.2
    }
]
"""


//1. custom swift struct

struct Recipe: Decodable {
    let title: String
    let views: Int
    let rating: Double
}

//2. convert JSON String to Data
let utf8String = recipesJSONString.utf8
let recipesData = Data(utf8String)

//3. create JSONdecoder Instance
let decoder = JSONDecoder()

//4. convert data to array recipes
let arrayRecipes = try! decoder.decode([Recipe].self, from: recipesData)
arrayRecipes.forEach{
    print("\($0.title) with a rating of \($0.rating)")
}




