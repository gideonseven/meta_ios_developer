//
//  SwiftUIView 2.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 2/11/2025.
//

import SwiftUI


struct GestureAndCallback: View {
    @State private var flag = false
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? Color.green : Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}
#Preview {
    GestureAndCallback()
}
