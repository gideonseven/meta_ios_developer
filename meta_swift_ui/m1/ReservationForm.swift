//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 30/10/2025.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName)
                .onChange(of: customerName,
                          perform: {newValue in
                    print(newValue)
                })
                .onSubmit ({
                    print("submitted")
                })
        }
        .padding()
    }
}

#Preview {
    ReservationForm()
}
