//
//  TopSellingView.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//
import SwiftUI

struct TopSellingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Top Selling").font(.title).bold()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(fruits) { fruit in
                        NavigationLink {
                            FruitDetailView(fruit: fruit)
                        } label: {
                            FruitCard(fruit: fruit)
                                .frame(width: 220, height: 220)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.vertical, 2)
            }
        }
    }
}
