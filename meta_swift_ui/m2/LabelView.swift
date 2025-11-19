//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("Menu", systemImage: "fork.knife")
              .labelStyle(.titleAndIcon)
    }
}

#Preview {
    LabelView()
}
