//
//  AsyncCatImage.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 17.03.2026.
//

import SwiftUI

struct AsyncCatImage: View {
    let url: URL?
    
    var body: some View {
        AsyncImage(url: url) { phase in
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
                Text(LocalizableStrings.error)
                    .foregroundColor(.gray)
            }
        }
    }
}
