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
            Button("Tap me") {
//                animationAmount += 1
            }
            .padding(50)
            .background(.teal)
            .foregroundColor(.black)
            .clipShape(.circle)
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation( .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount)
            )
            .onAppear{
                animationAmount = 2
            }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
