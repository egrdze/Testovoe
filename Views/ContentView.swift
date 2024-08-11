//
//  ContentView.swift
//  Spar-Testovoe
//
//  Created by Егор Ляшенко on 08.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ProductViewModel()

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Toggle Button
            Button(action: {
                viewModel.toggleView()
            }) {
                Image(systemName: "square.grid.2x2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                    .padding()
                    .background(.color1)
                    .foregroundColor(.color)
                    .clipShape(Circle())
            }
            .frame(width: 24, height: 24)
            .padding()
            
            ScrollView {
                if viewModel.isGridView {
                    LazyVGrid(columns: columns, spacing: 60) {
                        ForEach(viewModel.products) { product in
                            CardView(product: product)
                            CardView(product: product)
                            CardView(product: product)
                        }
                    }
                    .padding(.horizontal, 16)
                } else {
                    VStack(spacing: 30) {
                        ForEach(viewModel.products) { product in
                            ListView(product: product)
                            ListView(product: product)
                            ListView(product: product)
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
