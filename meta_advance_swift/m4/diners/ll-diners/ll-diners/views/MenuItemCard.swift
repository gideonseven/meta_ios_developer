//
//  MenuItemCard.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

import SwiftUI

struct MenuItemCard: View {
    let title: String
    let imageName: String
    
    var body: some View {
        VStack {
//            Image(imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fill)  // ← Prevents image distortion
//                .frame(width: 100, height: 100)
//                .clipped()  // ← Clips overflow if image doesn't fit perfectly
//                .cornerRadius(8)
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            
            Text(title)
                .font(.caption)  // ← Smaller font like in wireframe
        }
    }
}

#Preview {
    MenuItemCard(title: "Food 1", imageName: "placeholder")
}
