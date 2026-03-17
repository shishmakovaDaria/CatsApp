//
//  FavoritesViewModel.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 16.03.2026.
//

import Foundation

final class FavoritesViewModel: ObservableObject {
    
    // MARK: - Publishers
    @Published var favoritesCats: [CatModel] = []
    
    // MARK: - Life Cycle
    init() {
        favoritesCats = CatModel.mockData()
    }
}
