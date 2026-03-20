//
//  FavoritesGridItem.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 16.03.2026.
//

import SwiftUI

struct FavoritesGridItem: View {
    let cat: CatModel
    var isSelecting: Bool = false
    var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            if let imageURL = cat.imageURL {
                Color.clear
                    .aspectRatio(1.0, contentMode: .fit)
                    .overlay(
                        AsyncCatImage(url: imageURL)
                    )
                    .clipped()
                    .overlay(alignment: .topTrailing) {
                        if isSelecting {
                            selectionIndicator()
                                .padding(12)
                        }
                    }
            }
            VStack(alignment: .leading, spacing: 1) {
                Text(cat.name)
                    .font(.system(size: 17, weight: .semibold))
                    .lineLimit(1)
                Text(cat.origin)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.textGray)
                    .lineLimit(1)
                Text(cat.description)
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.textGray)
                    .lineLimit(2)
            }
            .padding(.horizontal, 20)
            Spacer(minLength: 0)
        }
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 24)
        )
        .shadow(color: Color.black.opacity(0.04), radius: 32)
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .strokeBorder(isSelected ? Color.blue : Color.clear, lineWidth: 2)
        )
    }
    
    private func selectionIndicator() -> some View {
        ZStack {
            Circle()
                .fill(isSelected ? Color.blue : Color.white)
                .strokeBorder(
                    isSelected ? Color.clear : Color.black.opacity(0.1),
                    lineWidth: 2
                )
                .frame(width: 28, height: 28)
            if isSelected {
                Image(.selectCheck)
                    .frame(width: 13, height: 13)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    FavoritesGridItem(cat: .fixture())
        .frame(width: 173, height: 289)
}
