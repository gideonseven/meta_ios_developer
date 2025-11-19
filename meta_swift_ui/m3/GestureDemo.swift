//
//  GestureDemo.swift
//  Little Lemon Demo
//
//  Created by Gideon Tobing on 2/11/2025.
//

import SwiftUI

struct GestureDemo: View {
    
    @State private var offsetValue = CGSize.zero
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero

    var body: some View {

        // on tap gesture
//        Text("Little Lemon Restaurant").onTapGesture {
//              print("Text Tapped!")
//          }
//        Text("Little Lemon Restaurant").onTapGesture(count:2) {
//               print("Text Tapped!")
//           }
        
//        onLongPressGesture
//        Text("Little Lemon Restaurant").onLongPressGesture {
//             print("Long Press Detected!")
//         }
//        Text("Little Lemon Restaurant")
//                 .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
//                     print("Long Press Detected!")
//                 },
//                 onPressingChanged: { state in
//                     print (state)
//                 })
        
//        DragGesture
//        Image("littleLemonLogo")
//                .offset(offsetValue)
//                    .gesture(
//                        DragGesture()
//                            .onChanged { gesture in
//                                offsetValue = gesture.translation
//                            }
//                    )
        
        
        Image("littleLemonLogo")
                    .rotationEffect(amount + finalAmount)
                    .gesture(
                        RotationGesture()
                            .onChanged { value in
                                amount = value
                            }
                            .onEnded { value in
                                finalAmount += amount
                                amount = .zero
                            }
                    )
    }
}

//maginificaiton Gesture
//struct ContentView: View {
//    @State private var amount = 0.0
//    @State private var finalAmount = 1.0
//
//
//    var body: some View {
//        Image("littleLemonRestaurant")
//            .scaleEffect(finalAmount + amount)
//            .gesture(
//        MagnificationGesture()
//                    .onChanged { value in
//                        amount = value – 1
//                    }
//                    .onEnded { value in
//                        finalAmount += amount
//                        amount = 0
//                    }
//            )
//    }
//}


//sequence gesture
//struct ContentView: View {
//    @State private var message = "You can long press and then drag"
//
//
//    var body: some View {
//        let longPress = LongPressGesture()
//            .onEnded { _ in
//            print("Long Press detected. Now you can drag me")
//            }
//
//
//        let drag = DragGesture()
//            .onChanged{ _ in
//                print ("Dragging…")
//            }
//
//
//        let sequence = longPress.sequenced(before: drag)
//
//
//        Image("littleLemonLogo")
//        .gesture(sequence)
//    }
//}
#Preview {
    GestureDemo()
}
