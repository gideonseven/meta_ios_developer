// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_error_handling {
    static func main() {
        let calculator = Calculator()
do {
    let successfulResult = try calculator.divide(x: 1, y: 2)
    print(successfulResult)
    let invalidResult = try calculator.divide(x: 1, y: 0)
}
catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
}

    }
}

enum CalculatorError: Error {
    case divisionByZero
}


class Calculator {
    
    func divide(x: Double, y: Double) throws -> Double {
        
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        
        return x / y
    }
}