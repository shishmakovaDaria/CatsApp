//
//  FavoritesView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import SwiftUI

struct FavoritesView: View {
    
    // MARK: - Properties
    @StateObject var viewModel: FavoritesViewModel
    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    init(viewModel: FavoritesViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 12,
                content: {
                    ForEach(viewModel.favoritesCats) { cat in
                        FavoritesGridItem(cat: cat)
                            .frame(height: 289)
                    }
                }
            )
            .scrollIndicators(.hidden)
            .padding(.all, 16)
        }
    }
}

#Preview {
    FavoritesView(viewModel: FavoritesViewModel())
}
