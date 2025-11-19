// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_exercise {
    static func main() {
        print("Hello, world!")

        switch ingredient {
case .lettuce:
  print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces")
case .croutons:
  print("Our \(ingredient.rawValue) makes sure we do not have to use additional salt in our salads")
case .chicken: print("Our meals tastes better with \(ingredient.rawValue) to raise the quality")
}


switch recipeInformation {
case .allergens(let information): print("The meal includes the following allergens: \(information)")
}
    }
}

enum Ingredient: String {
  case lettuce = "Romaine Lettuce"
  case croutons = "Salted Croutons"
  case chicken = "Free Range Chicken"
}

let ingredient = Ingredient.lettuce



enum RecipeInformation {
  case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "Peanuts, Milk, Gluten")

