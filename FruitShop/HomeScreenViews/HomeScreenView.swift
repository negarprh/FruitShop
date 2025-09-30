//
//  HomeScreenView.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var searchText = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {

                
//                Color.clear.frame(height: 6)

                HStack {
                    Image(systemName: "line.3.horizontal").font(.title2)
                    Spacer()
                    Image(systemName: "cart.badge.plus").font(.title2)
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("Hey").font(.largeTitle).bold()
                    Text("Find fresh fruits that you want")
                        .font(.headline).foregroundColor(.secondary)
                }

                HStack(spacing: 8) {
                    Image(systemName: "magnifyingglass").foregroundColor(.secondary)
                    TextField("Search fresh fruits", text: $searchText)
                }
                .padding(14)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))

                TopSellingView()

                NearYouView()
            }
            .padding(20)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
