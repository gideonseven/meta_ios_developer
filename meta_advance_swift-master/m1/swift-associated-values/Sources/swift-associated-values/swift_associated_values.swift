// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_associated_values {
    static func main() {
        print("Hello, world!")

        var checkIfCooked: PastaTypesA = PastaTypesA.spaghetti(cookingTime: 8)
      let cookingTime = PastaTypes.spaghetti.rawValue


        if cookingTime < 8 {
  print("Spaghetti is still not fully cooked...")
} else {
  print("Spaghetti is cooked, take it out of the water!")
}
    }
}


enum PastaTypesA {
  case spaghetti(cookingTime: Int)
  case penne(cookingTime: Int)
  case ravioli(cookingTime: Int)
  case rigatoni(cookingTime: Int)
}