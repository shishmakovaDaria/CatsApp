//
//  CatModel.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//
import SwiftUI

struct CatModel: Identifiable, Hashable {
    let id: String
    let name: String
    let temperament: String
    let origin: String
    let description: String
    let intelligence: Int
    let imageURL: URL?
    let wikipediaURL: URL?
    let isFavorite: Bool
}
