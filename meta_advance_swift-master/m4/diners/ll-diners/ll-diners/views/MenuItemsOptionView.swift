//
//  MenuItemsOptionView.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

import SwiftUI

struct MenuItemsOptionView : View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20){
                //selected categories
                Text("SELECTED CATEGORIES")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                // loop through menucategory cases
                // show: food, drink, desert
                ForEach(MenuCategory.allCases, id:\.self){
                    category in Text(category.rawValue.capitalized)
                        .padding()
                }
                
                Divider()
                
                //sort by section
                Text("SORT BY")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                // loop throuhg sortOption cases
                // show: Most popular, price $-$$$, A-Z
                ForEach(SortOption.allCases, id: \.self){
                    option in Text(option.displayText)
                        .padding()
                }
                
                Spacer()
            }
            .navigationTitle("Filter")
            .navigationBarTitleDisplayMode( .inline )
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Done"){
                        dismiss()
                    }
                }
            }
        }
    }
}


#Preview {
    MenuItemsOptionView()
}
