import Foundation

// Step 1: Define littleLemonAddress as String
let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

// Step 2: Initialize a new URL object with the Little Lemon address String
// URL initialized with a String returns an optional value which might be nil in case the provided address String holds an invalid website address.
let url = URL(string: littleLemonAddress)

// Step 3: Use guard to unwrap the Optional url constant
// As the else statement requires leaving the current scope, throwing an empty error will satisfy the Swift build system and prevent errors.
guard let url = url else {
    throw NSError()
}

// Step 4: Create a new URLRequest object with unwrapped url
let request = URLRequest(url: url)

// Step 5: Create a new data task
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data,
       let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()
