//
//  NavigationDemo.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 2/11/2025.
//

import SwiftUI

struct NavigationDemo: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: SecondView()){
                    Text("Do something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}


#Preview {
    NavigationDemo()
}
