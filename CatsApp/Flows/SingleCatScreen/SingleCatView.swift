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
                    nameView
                        .padding(.horizontal, 4)
                        .padding(.bottom, 12)
                    buttonsView
                    descriptionView
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
    
    private var nameView: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(viewModel.cat.name)
                .font(.system(size: 24, weight: .bold))
            Text(viewModel.cat.origin)
                .font(.system(size: 15, weight: .regular))
                .foregroundStyle(.textGray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var buttonsView: some View {
        HStack(spacing: 8) {
            SelectButton(
                type: .favorite(value: viewModel.cat.isFavorite),
                action: {}
            )
            SelectButton(
                type: .wikipedia,
                action: {
                    if let url = viewModel.cat.wikipediaURL {
                        openURL(url)
                    }
                }
            )
        }
        .frame(height: 60)
    }
    
    private var descriptionView: some View {
        VStack(spacing: 8) {
            Text(LocalizableStrings.aboutBreed.uppercased())
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.textGray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .padding(.top, 16)
            VStack(alignment: .leading, spacing: 2) {
                ForEach(viewModel.descriptionModels, id: \.self) { model in
                    DescriptionView(type: model)
                    if model != viewModel.descriptionModels.last {
                        Divider()
                            .padding(.vertical, 12)
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
