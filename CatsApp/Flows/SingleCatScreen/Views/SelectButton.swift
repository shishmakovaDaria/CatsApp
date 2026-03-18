//
//  SelectButton.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 18.03.2026.
//

import SwiftUI

enum SelectButtonType {
    case favorite
    case wikipedia
    
    var title: String {
        switch self {
        case .favorite:
            return LocalizableStrings.favorite
        case .wikipedia:
            return LocalizableStrings.wikipedia
        }
    }
    
    var image: Image {
        switch self {
        case .favorite:
                .init(systemName: "heart")
        case .wikipedia:
                .init(systemName: "globe")
        }
    }
}

struct SelectButton: View {
    let type: SelectButtonType
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            VStack(spacing: 4) {
                type.image
                    .foregroundColor(.blue)
                    .frame(width: 24, height: 24)
                Text(type.title)
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundColor(.blue)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
            .background(.black.opacity(0.04))
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    SelectButton(type: .favorite, action: {})
}
