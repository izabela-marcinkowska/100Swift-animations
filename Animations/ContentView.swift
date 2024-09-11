//
//  ContentView.swift
//  Animations
//
//  Created by Izabela Marcinkowska on 2024-09-11.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.3
    var body: some View {
        VStack {
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.teal)
            .foregroundColor(.black)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.default, value: animationAmount)
            
            Button("Tap me 2") {
                animationAmount += 1
            }
            .padding(50)
            .background(.teal)
            .foregroundColor(.black)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
            
            Button("Tap me 3") {
                animationAmount += 1
            }
            .padding(50)
            .background(.teal)
            .foregroundColor(.black)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.easeInOut(duration: 2)
                .delay(1),
                       value: animationAmount)
            
            Button("Tap me 4") {
                animationAmount += 1
            }
            .padding(50)
            .background(.teal)
            .foregroundColor(.black)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true),
                       value: animationAmount)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
