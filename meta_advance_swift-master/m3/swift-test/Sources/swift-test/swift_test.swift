// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_test {
    static func main() {
        print("Hello, world!")
    }
}

import XCTest

final class ImplementUnitTestingTests: XCTestCase {

  func test_calculateTotal_salesTaxTwentyPercent() {
    let items = [
      CheckoutItem(name: "Fish and Chips", price: 625),
      CheckoutItem(name: "Cheeseburger", price: 850),
      CheckoutItem(name: "Milkshake", price: 325),
      CheckoutItem(name: "Black Coffee", price: 175),
    ]
    let taxPercentage = 20

    let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)

    XCTAssertEqual(totalToPay, 2370)
  }
}


struct CheckoutItem {
    let name: String
    let price: Int
}


func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
