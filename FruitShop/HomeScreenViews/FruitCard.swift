//
//  FruitCard.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import SwiftUI

struct FruitCard: View {
    let fruit: Fruit

    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 28, style: .continuous)
                .fill(fruit.cardColor)
                .shadow(color: .black.opacity(0.12), radius: 18, x: 0, y: 12)

            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .shadow(color: .black.opacity(0.12), radius: 10, x: 0, y: 6)
                .offset(x: 20, y: 90)

            VStack(alignment: .leading, spacing: 6) {
                Text(fruit.name).font(.title3).bold()
                Text(fruit.price)
                    .foregroundColor(.secondary)
                    .font(.headline)
            }
            .padding(18)
        }
    }
}
