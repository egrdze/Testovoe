//
//  Product.swift
//  Spar-Testovoe
//
//  Created by Егор Ляшенко on 08.08.2024.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let imageName: String
    let rating: Double
    let title: String
    let price: Int
    let discountPrice: Int?
    let isFavorite: Bool
}
