//
//  FruitDetailView.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import SwiftUI

struct FruitDetailView: View {
    let fruit: Fruit
    @State private var qty = 0

    var body: some View {
        ScrollView {
            ZStack {
                LinearGradient(colors: [.blue.opacity(0.75), .green.opacity(0.65)],
                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 240)
                    .clipShape(RoundedRectangle(cornerRadius: 34, style: .continuous))
                    .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 8)

                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .padding(.top, 20)
            }
            .padding(.horizontal)
            .padding(.top, 8)

            VStack(alignment: .leading, spacing: 16) {
                Text(fruit.name.uppercased() + " - MEDIUM").font(.title).bold()
                Text("Each (500g - 700g)").foregroundColor(.secondary)

                Text("""
Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.
""")

                HStack(spacing: 14) {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color(.systemGray6))
                        .frame(width: 50, height: 50)
                        .overlay(Image(systemName: "hourglass").font(.title2))
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Delivery Time").bold()
                        Text("25–30 Min").foregroundColor(.secondary)
                    }
                    Spacer()
                }
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(.systemGray6).opacity(0.6))
                )

                HStack {
                    Text(fruit.price.replacingOccurrences(of: " each", with: ""))
                        .font(.title).bold()
                    Spacer()
                    HStack(spacing: 16) {
                        Button { if qty > 0 { qty -= 1 } } label: { Text("–").font(.title2).bold() }
                            .padding(.horizontal, 12).padding(.vertical, 8)
                            .background(Color(.systemGray6))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        Text("\(qty)").font(.title2).foregroundColor(.secondary)
                        Button { qty += 1 } label: { Text("+").font(.title2).bold() }
                            .padding(.horizontal, 12).padding(.vertical, 8)
                            .background(Color(.systemGray6))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }

                Button {} label: {
                    Text("Add to cart")
                        .font(.headline).frame(maxWidth: .infinity).padding()
                        .background(LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 6)
                }
                .padding(.top, 6)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
