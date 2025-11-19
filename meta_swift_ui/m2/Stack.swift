//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct Stack: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color.gray)
            Circle()
                .scale(x: 0.75, y: 0.75)
                .foregroundColor(Color.red)
            VStack{
                Image(systemName: "globle")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello World")
                    .padding()
                HStack{
                    Button("one"){}
                    Button("two"){}
                }
            }
        }
    }
}

#Preview {
    Stack()
}
