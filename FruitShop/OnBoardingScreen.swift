//
//  OnBoardingScreen.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import SwiftUI

struct OnBoardingScreen: View {
    @State private var goHome = false

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue.opacity(0.85), .green.opacity(0.75)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 16) {
                Image("apple")
                    .resizable().scaledToFit().frame(height: 140)
                Text("Fresh Fruits")
                    .font(.largeTitle).bold().foregroundColor(.white)
                Text("Order you fruites here!")
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding()
        }
        .onAppear {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                goHome = true
            }
        }
        .navigationDestination(isPresented: $goHome) {
            HomeScreenView()
        }
    }
}
