import UIKit

import Foundation
let jsonString = """
{
 "name" : "John"
}
"""
struct User {
let name: String
}
let jsonData = Data(jsonString.utf8)
let decoder = JSONDecoder()
let user = try! decoder.decode(User.self, from: jsonData)
print(user.name)
