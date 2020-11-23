//
//  ShowHideAnimation.swift
//  Animations
//
//  Created by Denny Mathew on 22/11/20.
//

import Foundation
import SwiftUI
struct ShowHideAnimation: View {
    @State private var isRed: Bool = false
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation(.interpolatingSpring(stiffness: 20, damping: 3)) {
                    self.isRed.toggle()
                }
            }
            if isRed {
                Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 300)
//                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
                    .transition(.pivot)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideAnimation()
    }
}
