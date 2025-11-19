//
//  MyTabView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 2/11/2025.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack{
            TabView{
                
                Text("This is the Share View")
                    .tabItem({
                        Label("Share", systemImage: "square.and.arrow.up")
                    })
                
                Text("This is the Trash View")
                    .tabItem({
                        Label("", systemImage: "trash")
                    })

            }
        }
    }
}

#Preview {
    MyTabView()
}
