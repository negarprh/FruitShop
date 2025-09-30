//
//  Places.swift
//  FruitShop
//
//  Created by Negar Pirasteh on 2025-09-30.
//

import Foundation

struct Places: Identifiable, Hashable {
    let id: Int
    let name: String
    let time: String        
    let rating: String
    let image: String
}

let dataArray: [Places] = [
    .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
    .init(id: 1, name: "Super Store",     time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
    .init(id: 2, name: "Organic Farm",    time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
    .init(id: 3, name: "Big Basket",      time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
    .init(id: 4, name: "Easy Mart",       time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
    .init(id: 5, name: "Let's Shop",      time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
]
