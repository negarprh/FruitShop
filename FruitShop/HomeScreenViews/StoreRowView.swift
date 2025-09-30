//
//  StoreRowView.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//
import SwiftUI

struct StoreRowView: View {
    let place: Places

    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(Color(.systemGray6))
                Image(place.image)              
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .frame(width: 86, height: 86)

            VStack(alignment: .leading, spacing: 6) {
                Text(place.name).font(.title3).bold()
                Text(place.time).foregroundColor(.secondary)
                Text(place.rating)
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            Spacer()
        }
        .padding(12)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color(.systemGray6).opacity(0.6))
        )
    }
}
