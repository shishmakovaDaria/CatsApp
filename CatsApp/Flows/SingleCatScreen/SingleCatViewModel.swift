//
//  SingleCatViewModel.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 18.03.2026.
//

import Foundation

final class SingleCatViewModel: ObservableObject {
    
    // MARK: - Publishers
    @Published var cat: CatModel
    
    // MARK: - Life Cycle
    init(cat: CatModel) {
        self.cat = cat
    }
}
