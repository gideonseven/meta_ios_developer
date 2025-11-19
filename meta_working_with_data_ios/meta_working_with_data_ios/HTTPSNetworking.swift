//
//  HTTPSNetworking.swift
//  meta_working_with_data_ios
//
//  Created by gideon tobing on 20/11/2025.
//

import Foundation

let menuAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

let menuURL = URL(string: menuAddress)

guard let menuURL = menuURL else {
    throw NSError()
}

let request = URLRequest(url: menuURL)

let task = URLSession.shared.dataTask(with: menuURL){
    data, response, error in
}
