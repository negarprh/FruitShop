//
//  NearYouDetailView.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import SwiftUI

struct NearYouDetailView: View {
    let place: Places

    var body: some View {
        ScrollView {
            ZONE_Header(imageName: place.image)

            VStack(alignment: .leading, spacing: 16) {
                Text(place.name.uppercased())
                    .font(.title).bold()

                Text(place.time)
                    .foregroundColor(.secondary)

                Text("""
We deliver fresh fruits from \(place.name). Expect great quality and quick delivery from nearby vendors. Browse items, check delivery time, and start your order.
""")

            
                HStack(spacing: 12) {
                    ZONE_InfoCard(icon: "hourglass", title: "Open Hours", subtitle: place.time)
                    ZONE_InfoCard(icon: "mappin.and.ellipse", title: "Distance", subtitle: parseDistance(from: place.rating))
                }

                HStack(spacing: 12) {
                    ZONE_InfoCard(icon: "star.fill", title: "Rating", subtitle: parseRating(from: place.rating))
                    ZONE_InfoCard(icon: "clock", title: "Delivery", subtitle: "25–30 Min")
                }

                Button {
                    
                } label: {
                    Text("Start order")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
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

  

 
    private func parseDistance(from combined: String) -> String {
        if let range = combined.range(of: "📍") {
            let tail = combined[range.upperBound...].trimmingCharacters(in: .whitespaces)
            return tail
        }
        return "—"
    }

    private func parseRating(from combined: String) -> String {
    
        if let starRange = combined.range(of: "★ ") {
            let afterStar = combined[starRange.upperBound...]
            if let barRange = afterStar.range(of: " |") {
                return String(afterStar[..<barRange.lowerBound]).trimmingCharacters(in: .whitespaces)
            }
            return String(afterStar).trimmingCharacters(in: .whitespaces)
        }
        return "—"
    }
}


private struct ZONE_Header: View {
    let imageName: String
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue.opacity(0.75), .green.opacity(0.65)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(height: 240)
                .clipShape(RoundedRectangle(cornerRadius: 34, style: .continuous))
                .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 8)

            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 170)
                .padding(.top, 20)
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}

private struct ZONE_InfoCard: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        HStack(spacing: 14) {
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(.systemGray6))
                .frame(width: 50, height: 50)
                .overlay(Image(systemName: icon).font(.title2))
            VStack(alignment: .leading, spacing: 4) {
                Text(title).bold()
                Text(subtitle).foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(12)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemGray6).opacity(0.6))
        )
    }
}
