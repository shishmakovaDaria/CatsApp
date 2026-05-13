//
//  CatModel+fixture.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 16.03.2026.
//

import Foundation

extension CatModel {
    static func fixture(
        id: String = "1",
        name: String = "Abyssinian",
        temperament: String = "Active, Energetic, Independent, Intelligent, Gentle",
        origin: String = "Egypt",
        description: String = "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
        intelligence: Int = 5,
        imageURL: URL? = URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
        wikipediaURL: URL? = URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
        isFavorite: Bool = false
    ) -> CatModel {
        CatModel(
            id: id,
            name: name,
            temperament: temperament,
            origin: origin,
            description: description,
            intelligence: intelligence,
            imageURL: imageURL,
            wikipediaURL: wikipediaURL,
            isFavorite: isFavorite
        )
    }
    
    static func mockData() -> [CatModel] {
        return [
            .init(
                id: "1",
                name: "Abyssinian",
                temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                intelligence: 5,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
                isFavorite: true
            ),
            .init(
                id: "2",
                name: "Aegean",
                temperament: "Affectionate, Social, Intelligent, Playful, Active",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                intelligence: 3,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Aegean_cat"),
                isFavorite: false
            ),
            .init(
                id: "3",
                name: "Abyssinian",
                temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                intelligence: 5,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
                isFavorite: false
            ),
            .init(
                id: "4",
                name: "Aegean",
                temperament: "Affectionate, Social, Intelligent, Playful, Active",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                intelligence: 3,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Aegean_cat"),
                isFavorite: false
            ),
            .init(
                id: "5",
                name: "Abyssinian",
                temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                intelligence: 5,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
                isFavorite: false
            ),
            .init(
                id: "6",
                name: "Aegean",
                temperament: "Affectionate, Social, Intelligent, Playful, Active",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                intelligence: 3,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Aegean_cat"),
                isFavorite: false
            ),
            .init(
                id: "7",
                name: "Abyssinian",
                temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                intelligence: 5,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
                isFavorite: false
            ),
            .init(
                id: "8",
                name: "Aegean",
                temperament: "Affectionate, Social, Intelligent, Playful, Active",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                intelligence: 3,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Aegean_cat"),
                isFavorite: false
            ),
            .init(
                id: "9",
                name: "Abyssinian",
                temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                intelligence: 5,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
                isFavorite: false
            ),
            .init(
                id: "10",
                name: "Aegean",
                temperament: "Affectionate, Social, Intelligent, Playful, Active",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                intelligence: 3,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Aegean_cat"),
                isFavorite: false
            ),
            .init(
                id: "11",
                name: "Abyssinian",
                temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                intelligence: 5,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
                isFavorite: false
            ),
            .init(
                id: "12",
                name: "Aegean",
                temperament: "Affectionate, Social, Intelligent, Playful, Active",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                intelligence: 3,
                imageURL: URL(string: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"),
                wikipediaURL: URL(string: "https://en.wikipedia.org/wiki/Aegean_cat"),
                isFavorite: false
            )
        ]
    }
}
