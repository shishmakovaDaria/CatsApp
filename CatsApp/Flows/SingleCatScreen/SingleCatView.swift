//
//  SingleCatView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 18.03.2026.
//

import SwiftUI

struct SingleCatView: View {
    
    // MARK: - Properties
    @StateObject var viewModel: SingleCatViewModel
    @Environment(\.openURL) private var openURL
    
    init(viewModel: SingleCatViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                if let imageURL = viewModel.cat.imageURL {
                    Color.clear
                        .aspectRatio(1.0, contentMode: .fill)
                        .overlay(
                            AsyncCatImage(url: imageURL)
                        )
                        .clipped()
                }
                VStack(spacing: 8) {
                    nameView()
                        .padding(.horizontal, 4)
                        .padding(.bottom, 12)
                    buttonsView()
                    descriptionView()
                }
                .padding(.all, 20)
                Spacer()
            }
        }
        .scrollIndicators(.hidden)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(LocalizableStrings.breed)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(Color.navbar, for: .navigationBar)
    }
    
    private func nameView() -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(viewModel.cat.name)
                    .font(.system(size: 24, weight: .bold))
                    .lineLimit(1)
                Text(viewModel.cat.origin)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.textGray)
                    .lineLimit(1)
            }
            Spacer(minLength: 0)
        }
    }
    
    private func buttonsView() -> some View {
        HStack(spacing: 8) {
            SelectButton(
                type: viewModel.cat.isFavorite ? .favorite : .notFavorite,
                action: {})
            SelectButton(
                type: .wikipedia,
                action: {
                    if let url = viewModel.cat.wikipediaURL {
                        openURL(url)
                    }
                })
        }
        .frame(height: 60)
    }
    
    private func descriptionView() -> some View {
        VStack(spacing: 8) {
            Text(LocalizableStrings.aboutBreed.uppercased())
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.textGray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .padding(.top, 16)
            VStack(alignment: .leading, spacing: 2) {
                Text(LocalizableStrings.description)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.textGray)
                Text(viewModel.cat.description)
                    .font(.system(size: 17, weight: .regular))
                Divider()
                    .padding(.vertical, 12)
                Text(LocalizableStrings.temperament)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.textGray)
                Text(viewModel.cat.temperament)
                    .font(.system(size: 17, weight: .regular))
                Divider()
                    .padding(.vertical, 12)
                Text(LocalizableStrings.intelligence)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.textGray)
                HStack(spacing: 16) {
                    Text("\(viewModel.cat.intelligence)/5")
                    HStack(spacing: 4) {
                        ForEach(0..<5, id: \.self) { i in
                            Capsule()
                                .frame(height: 6)
                                .foregroundStyle(i < viewModel.cat.intelligence ? .blue : .black.opacity(0.08))
                                
                        }
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.black.opacity(0.04))
            )
        }
    }
}

#Preview {
    SingleCatView(
        viewModel: SingleCatViewModel(
            cat: CatModel.fixture()
        )
    )
}
