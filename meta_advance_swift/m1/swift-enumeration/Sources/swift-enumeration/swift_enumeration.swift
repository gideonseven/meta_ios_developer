// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_enumeration {

    static func main() {
        print("Hello, world!")
       cookingPerfectPasta(pasta: .rigatoni)
    }
}


enum PastaTypes:Int{
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}

func cookingPerfectPasta(pasta: PastaTypes) {
  let cookingTime = pasta.rawValue
  print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}