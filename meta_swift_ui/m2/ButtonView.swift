//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct ButtonViewUI: View {
    var body: some View {
                Button(role: .destructive) {
                    print("do something!")
                } label: {
                    HStack {
                        Image(systemName: "trash")
                        Text("")
                    }
                }
    }
}

#Preview {
    ButtonViewUI()
}
