//
//  GestureAnimation.swift
//  Animations
//
//  Created by Denny Mathew on 22/11/20.
//

import Foundation
import SwiftUI
struct GestureAnimation: View {
    let letters = Array("HELLO SWIFT UI")
    @State private var enabled = false
    @State private var dragAmount: CGSize = CGSize.zero
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { self.dragAmount = $0.translation }
//                    .onEnded { _ in
//                        withAnimation(.spring()) {
//                            self.dragAmount = .zero
//                        }
//                    }
//            )
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { number in
                Text(String(self.letters[number]))
                    .padding(8)
                    .font(.title)
                    .background(self.enabled ? Color.blue : Color.red)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(number) / 20))
            }
        }
        .gesture(
            DragGesture()
                .onChanged { self.dragAmount = $0.translation }
                .onEnded { _ in
                    self.dragAmount = .zero
                    self.enabled.toggle()
                }
        )
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        GestureAnimation()
//    }
//}
