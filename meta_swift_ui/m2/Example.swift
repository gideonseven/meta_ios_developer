//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct Example: View {
    var body: some View {
        VStack (alignment: .leading){
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("hello, World")
                .background(Color.red)
                .frame(width: 200, height: 50)
                .background(Color.blue)
            HStack{
                Button("One"){}
                Button("Two"){}
                Button("Three"){}
            }
        }
        .frame(width: 300, alignment: .leading)
    }
}

#Preview {
    Example()
}
