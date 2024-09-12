//
//  ContentView.swift
//  Animations
//
//  Created by Izabela Marcinkowska on 2024-09-11.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.5
    var body: some View {
        VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    ContentView()
}
