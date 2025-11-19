// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_case_iterable {
    static func main() {
        print("Hello, world!")

// using case iterable able to count enum cases
let totalCaseCount = PastaTypes.allCases.count
print(totalCaseCount)
    }
}


enum PastaTypes: Int, CaseIterable {
  case spaghetti
  case penne
  case ravioli
  case rigatoni
}
