//
//  MainViewModel.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import Foundation

final class MainViewModel: ObservableObject {
    
    // MARK: - Publishers
    @Published var cats: [CatModel] = []
    
    // MARK: - Life Cycle
    init() {
        cats = CatModel.mockData()
    }
}
