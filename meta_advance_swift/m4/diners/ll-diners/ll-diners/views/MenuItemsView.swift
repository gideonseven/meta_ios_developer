//
//  MenuItemsView.swift
//  ll-diners
//
//  Created by Gideon Tobing on 10/11/2025.
//

import SwiftUI

struct MenuItemsView: View {
    
    @StateObject private var viewModel = MenuViewViewModel()
    @State private var showFilterOptions = false

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    //food
                    Text("Food")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(viewModel.foods) {
                            item in
                            NavigationLink(destination: MenuItemDetailsView(item: item)){
                                MenuItemCard(
                                    title: item.title,
                                    imageName: "placeholder"
                                )
                            }
                        }
                    }
                    .padding(.horizontal)

                    //drinks
                    Text("Drinks")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(viewModel.drinks) {
                            item in
                            NavigationLink(destination: MenuItemDetailsView(item: item)){
                                MenuItemCard(
                                    title: item.title,
                                    imageName: "placeholder"
                                )
                            }
                        }
                    }
                    .padding(.horizontal)

                    //desserts
                    Text("Desserts")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(viewModel.desserts) {
                            item in
                            NavigationLink(destination: MenuItemDetailsView(item: item)){
                                MenuItemCard(
                                    title: item.title,
                                    imageName: "placeholder"
                                )
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showFilterOptions = true
                        print("Filter tapped!")
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $showFilterOptions){
                MenuItemsOptionView()
            }
        }
    }

}

#Preview {
    MenuItemsView()
}
