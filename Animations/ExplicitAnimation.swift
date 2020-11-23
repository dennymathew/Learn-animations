//
//  ExplicitAnimation.swift
//  Animations
//
//  Created by Denny Mathew on 22/11/20.
//

import Foundation
import SwiftUI
struct ExplicitAnimation: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(40)
        .background(Color.orange)
        .foregroundColor(.white)
        .clipShape(Circle())
        .shadow(color: .yellow, radius: 20)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExplicitAnimation()
//    }
//}
