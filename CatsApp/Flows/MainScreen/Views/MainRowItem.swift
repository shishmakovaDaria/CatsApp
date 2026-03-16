//
//  MainRowItem.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import SwiftUI

struct MainRowItem: View {
    let cat: CatModel
    var viewHeight: CGFloat = 112
    
    var body: some View {
        HStack(spacing: 20) {
            if let imageURL = cat.imageURL {
                AsyncImage(url: imageURL, content: catImage)
                .frame(width: 112)
                .clipped()
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
            .padding(.vertical, 18)
            Spacer(minLength: 0)
        }
        .frame(height: viewHeight)
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 24)
        )
        .shadow(color: Color.black.opacity(0.04), radius: 32)
    }
    
    @ViewBuilder
    private func catImage(for phase: AsyncImagePhase) -> some View {
        switch phase {
        case .empty:
            ProgressView()
        case .success(let image):
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        case .failure(let error):
            VStack(spacing: 4) {
                Image(systemName: "xmark.circle")
                Text(error.localizedDescription)
                    .font(.system(size: 13, weight: .regular))
                    .multilineTextAlignment(.center)
            }
        @unknown default:
            Text("Unknown")
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    MainRowItem(cat: .fixture())
}
