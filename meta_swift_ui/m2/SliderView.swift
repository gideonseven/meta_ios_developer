//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct SliderView: View {
    @State private var size: CGFloat = 0.1

    var body: some View {
        VStack {
                   Text("Little Lemon").font(.system(size: size * 50))
                   Slider(value: $size)
                   
               }
               .padding()    }
}

#Preview {
    SliderView()
}
