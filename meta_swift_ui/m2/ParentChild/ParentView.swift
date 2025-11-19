//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(Color.yellow)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 30)
        }
    }
}

#Preview {
    ParentView()
}
