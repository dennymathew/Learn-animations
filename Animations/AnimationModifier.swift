//
//  AnimationModifier.swift
//  Animations
//
//  Created by Denny Mathew on 22/11/20.
//

import Foundation
import SwiftUI
struct AnimationModifier: View {
    @State private var shouldPivot = false
    var body: some View {
        Button("Tap me") {
            shouldPivot.toggle()
        }
        .padding(30)
        .background(Color.orange)
        .foregroundColor(.white)
        .transition(shouldPivot ? .pivot : .identity)
    }
}
struct CornerRotate: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
//            .clipped()
    }
}
extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotate(amount: -45, anchor: .top), identity: CornerRotate(amount: 45, anchor: .top))
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnimationModifier()
//    }
//}
