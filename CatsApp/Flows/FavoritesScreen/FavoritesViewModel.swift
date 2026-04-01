//
//  FavoritesViewModel.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 16.03.2026.
//

import Foundation

enum FavoritesViewState: Equatable {
    case idle
    case selection(catIDs: Set<String>)
    
    var isInSelectionMode: Bool {
        if case .selection = self { return true }
        return false
    }

    var selectedCatIDs: Set<String> {
        if case .selection(let ids) = self { return ids }
        return []
    }
}

final class FavoritesViewModel: ObservableObject {

    // MARK: - Publishers
    @Published var favoritesCats: [CatModel] = []
    @Published var state: FavoritesViewState = .idle

    // MARK: - Life Cycle
    init() {
        favoritesCats = CatModel.mockData()
    }
    
    // MARK: - Public methods
    func toggleSelection(for cat: CatModel) {
        var selectedCatIDs = state.selectedCatIDs
        if selectedCatIDs.contains(cat.id) {
            selectedCatIDs.remove(cat.id)
        } else {
            selectedCatIDs.insert(cat.id)
        }
        state = .selection(catIDs: selectedCatIDs)
    }

    func startSelecting() {
        state = .selection(catIDs: [])
    }

    func cancelSelecting() {
        state = .idle
    }

    func deleteSelected() {
        favoritesCats.removeAll { state.selectedCatIDs.contains($0.id) }
        cancelSelecting()
    }
    
    func gridItemState(catID: String) -> FavoritesGridItemState {
        switch state {
        case .idle:
            return .idle
        case .selection(let ids):
            return .selecting(isSelected: ids.contains(catID))
        }
    }
}
