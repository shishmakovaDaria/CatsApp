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
    @Published var descriptionModels: [DescriptionType] = []
    
    // MARK: - Life Cycle
    init(cat: CatModel) {
        self.cat = cat
        self.descriptionModels = makeDescriptionModels()
    }
    
    private func makeDescriptionModels() -> [DescriptionType] {
        return [
            .text(
                title: LocalizableStrings.description,
                description: cat.description
            ),
            .text(
                title: LocalizableStrings.temperament,
                description: cat.temperament
            ),
            .feature(
                title: LocalizableStrings.intelligence,
                rate: cat.intelligence
            )
        ]
    }
}
