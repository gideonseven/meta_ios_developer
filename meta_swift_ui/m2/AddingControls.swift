//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct AddingControlsView: View {
    @State var reservationDate = Date()

      var body: some View {
          Form {
              HStack {
                  DatePicker(
                      selection: $reservationDate, in: Date()...,
                      displayedComponents: [.date, .hourAndMinute]
                  ) {}
                  Button(action: { print("do something!") }) {
                      HStack {
                          Image(systemName: "arrow.right.circle")
                          Text("Done")
                      }
                  }.padding(20)
              }
              Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
          }
      }
}

#Preview {
    AddingControlsView()
}
