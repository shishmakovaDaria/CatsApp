//
//  MainRowItem.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import SwiftUI

struct MainRowItem: View {
    let cat: CatModel
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: URL(string: cat.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 112, height: 112)
            .clipped()
            VStack(alignment: .leading, spacing: 1) {
                Text(cat.name)
                    .font(.system(size: 17, weight: .semibold))
                Text(cat.origin)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.textGray)
                Text(cat.description)
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.textGray)
            }
            .padding([.top, .bottom], 18)
            Spacer()
        }
        .frame(height: 112)
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 24)
        )
        .shadow(color: Color.black.opacity(0.04), radius: 32)
    }
}

#Preview {
    MainRowItem(
        cat: CatModel(
            id: "1",
            name: "Abyssinian",
            origin: "Egypt",
            description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
            image: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
        )
    )
}
