//
//  ProductViewModel.swift
//  Spar-Testovoe
//
//  Created by Егор Ляшенко on 08.08.2024.
//

import SwiftUI

class ProductViewModel: ObservableObject {
    @Published var isGridView = true
    @Published var products: [Product] = [
        Product(imageName: "Image1", rating: 3.5, title: "Салат Овощной с Крабовыми Палочками", price: 3, discountPrice: 7, isFavorite: true),
        Product(imageName: "Image", rating: 4.3, title: "Салат Овощной с Крабовыми Палочками", price: 3, discountPrice: 7, isFavorite: false),
        Product(imageName: "SoupImage", rating: 2.3, title: "Дорадо Охлажденная Непотрошеная 300-400г", price: 3, discountPrice: 7, isFavorite: false)
        // Add other products as needed
    ]
    
    func toggleView() {
        isGridView.toggle()
    }
}
