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
    @Published var isSelecting = false
    @Published var selectedCatIDs: Set<String> = []
    
    // MARK: - Life Cycle
    init() {
        favoritesCats = CatModel.mockData()
    }
    
    // MARK: - Public methods
    func toggleSelection(for cat: CatModel) {
        if selectedCatIDs.contains(cat.id) {
            selectedCatIDs.remove(cat.id)
        } else {
            selectedCatIDs.insert(cat.id)
        }
    }
    
    func startSelecting() {
        isSelecting = true
    }
    
    func cancelSelecting() {
        isSelecting = false
        selectedCatIDs.removeAll()
    }
    
    func deleteSelected() {
        favoritesCats.removeAll { selectedCatIDs.contains($0.id) }
        isSelecting = false
        selectedCatIDs.removeAll()
    }
}
