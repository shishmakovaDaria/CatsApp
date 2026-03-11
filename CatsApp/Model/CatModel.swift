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
    let origin: String
    let description: String
    let image: String
    
    static func getMockData() -> [CatModel] {
        return [
            .init(
                id: "1",
                name: "Abyssinian",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
            ),
            .init(
                id: "2",
                name: "Aegean",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                image: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"
            ),
            .init(
                id: "3",
                name: "Abyssinian",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
            ),
            .init(
                id: "4",
                name: "Aegean",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                image: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"
            ),
            .init(
                id: "5",
                name: "Abyssinian",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
            ),
            .init(
                id: "6",
                name: "Aegean",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                image: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"
            ),
            .init(
                id: "7",
                name: "Abyssinian",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
            ),
            .init(
                id: "8",
                name: "Aegean",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                image: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"
            ),
            .init(
                id: "9",
                name: "Abyssinian",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
            ),
            .init(
                id: "10",
                name: "Aegean",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                image: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"
            ),
            .init(
                id: "11",
                name: "Abyssinian",
                origin: "Egypt",
                description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
            ),
            .init(
                id: "12",
                name: "Aegean",
                origin: "Greece",
                description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
                image: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg"
            )
        ]
    }
}
