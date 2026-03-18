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
                type: .favorite,
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
        HStack(spacing: 8) {
            Color.red
        }
        .frame(height: 400)
    }
}

#Preview {
    SingleCatView(
        viewModel: SingleCatViewModel(
            cat: CatModel.fixture()
        )
    )
}
