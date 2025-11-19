//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 31/10/2025.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate = Date()
       var dateClosedRange: ClosedRange<Date> {
           let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
           let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
           return min...max
       }
       
       var body: some View {
           

           NavigationView {
               Form {
                   Section {
                       DatePicker(
                           selection: $selectedDate,
                           in: dateClosedRange,
                           displayedComponents: .date,
                           label: { Text("Due Date") }
                       )
                   }
               }
           }
       }
}

#Preview {
    DatePickerView()
}
