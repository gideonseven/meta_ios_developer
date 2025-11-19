//
//  SortOption.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//


enum SortOption: String, CaseIterable {
    case mostPopular
    case price
    case alphabetical
    
    //computed property
    var displayText: String {
        switch self {
        case .mostPopular:
            return "Most Popular"
        case .price:
            return "Price $-$$$"
        case .alphabetical:
            return "A-Z"
        }
    }
}
