//
//  FavoritesView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import SwiftUI

struct FavoritesView: View {
    
    // MARK: - Properties
    @StateObject var viewModel: FavoritesViewModel
    @State private var showDeleteAlert = false
    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    // MARK: - Life Cycle
    init(viewModel: FavoritesViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    // MARK: - Body
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 12,
                content: {
                    ForEach(viewModel.favoritesCats) { cat in
                        if viewModel.isSelecting {
                            FavoritesGridItem(
                                cat: cat,
                                isSelecting: true,
                                isSelected: viewModel.selectedCatIDs.contains(cat.id)
                            )
                            .frame(height: 289)
                            .onTapGesture {
                                viewModel.toggleSelection(for: cat)
                            }
                        } else {
                            NavigationLink(
                                destination: SingleCatView(
                                    viewModel: SingleCatViewModel(cat: cat)
                                )
                            ) {
                                FavoritesGridItem(cat: cat)
                                    .frame(height: 289)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            )
            .scrollIndicators(.hidden)
            .padding(.all, 16)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                if viewModel.isSelecting {
                    Button(LocalizableStrings.cancel) {
                        viewModel.cancelSelecting()
                    }
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                if viewModel.isSelecting {
                    Button(LocalizableStrings.delete) {
                        showDeleteAlert = true
                    }
                    .foregroundStyle(.red)
                    .disabled(viewModel.selectedCatIDs.isEmpty)
                } else {
                    Button(LocalizableStrings.select) {
                        viewModel.startSelecting()
                    }
                }
            }
        }
        .alert(LocalizableStrings.areYouSure, isPresented: $showDeleteAlert) {
            Button(LocalizableStrings.cancel, role: .cancel) {
                viewModel.cancelSelecting()
            }
            Button(LocalizableStrings.confirmDelete, role: .destructive) {
                viewModel.deleteSelected()
            }
        } message: {
            Text(LocalizableStrings.deleteConfirmationMessage)
        }
    }
}

#Preview {
    FavoritesView(viewModel: FavoritesViewModel())
}
