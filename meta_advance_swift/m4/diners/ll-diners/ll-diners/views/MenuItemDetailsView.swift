//
//  MenuItemDetailsView.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    
    var body: some View {
        
        let ingredientsText = item.ingredients.isEmpty ? "n/a" : item.ingredients.map{$0.rawValue}.joined(separator: ", ")
        
        ScrollView {
            VStack(spacing: 20){
                //add title
                Text(item.title)
                    .font(.headline)
                
                // large image
                Image("ll-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 300)
                    .cornerRadius(8)
                
                // second title
                Text(item.title.uppercased())
                    .font(.largeTitle)
                    .bold()
                
                //price
                HStack {
                    Text("Price: ")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("$\(item.price, specifier: "%.2f")")
                }
                
                //order count
                HStack {
                    Text("Ordered: ")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("\(item.ordersCount)")
                }
                
                //ingredients list
                HStack {
                    Text("Ingredients: ")
                        .fontWeight(.semibold)
                    Spacer()
                    Text(ingredientsText)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    NavigationStack{
        MenuItemDetailsView(item: foodMenuItems[0])
    }
}
