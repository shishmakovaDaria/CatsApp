//
//  FavoritesGridItem.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 16.03.2026.
//

import SwiftUI

enum FavoritesGridItemState: Equatable {
    /// Обычный режим: тап ведёт на детали.
    case idle
    /// Режим выбора на экране: `isSelected` — выбрана ли эта карточка.
    case selecting(isSelected: Bool)
    
    var isInSelectionMode: Bool {
        if case .selecting = self { return true }
        return false
    }

    var isItemSelected: Bool {
        if case .selecting(let selected) = self { return selected }
        return false
    }
}

struct FavoritesGridItem: View {
    let cat: CatModel
    var state: FavoritesGridItemState

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
                        if state.isInSelectionMode {
                            selectionIndicator(isSelected: state.isItemSelected)
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
                .strokeBorder(state.isItemSelected ? Color.blue : Color.clear, lineWidth: 2)
        )
    }
    
    private func selectionIndicator(isSelected: Bool) -> some View {
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
    FavoritesGridItem(cat: .fixture(), state: .idle)
        .frame(width: 173, height: 289)
}
