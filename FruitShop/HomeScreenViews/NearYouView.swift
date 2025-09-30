//
//  NearYouView.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import SwiftUI

struct NearYouView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Near you").font(.title).bold()

            VStack(spacing: 16) {
                ForEach(dataArray) { place in
                    NavigationLink {
                        NearYouDetailView(place: place)   
                    } label: {
                        StoreRowView(place: place)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}
