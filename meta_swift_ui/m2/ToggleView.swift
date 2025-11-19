//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct ToggleView: View {
    @State var isShowing = true // toggle state – A toggle won’t work unless you’ve give a truth state

    var body: some View {
        Toggle(isOn: $isShowing) {
                  Text("Hello World")
          }    }
}

#Preview {
    ToggleView()
}
