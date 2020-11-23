//
//  ImplicitAnimation.swift
//  Animations
//
//  Created by Denny Mathew on 22/11/20.
//

import Foundation
import SwiftUI
struct ImplicitAnimation: View {
    @State private var animationAmount: CGFloat = 1.0
    var body: some View {
        Button("Tap Me") {
            //            self.animationAmount += 0.5
        }
        .padding(30)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2-animationAmount))
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
        .onAppear {
            self.animationAmount = 2
        }
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImplicitAnimation()
//    }
//}
