//
//  MainView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Properties
    @StateObject var viewModel: MainViewModel
    @State private var scrollButtonIsHidden = true
    private var rowItemHeight = CGFloat.rowItemHeight
    
    init(viewModel: MainViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: .zero) {
                    Color.clear
                        .frame(height: 1)
                        .id(String.topId)
                    LazyVStack(spacing: 12) {
                        ForEach(viewModel.cats) { cat in
                            NavigationLink(
                                destination: SingleCatView(
                                    viewModel: SingleCatViewModel(cat: cat)
                                )
                            ) {
                                MainRowItem(
                                    cat: cat,
                                    viewHeight: rowItemHeight
                                )
                            }
                            .buttonStyle(.plain) 
                        }
                    }
                    .padding(.all, 16)
                }
            }
            .scrollIndicators(.hidden)
            .onScrollGeometryChange(for: CGFloat.self) { geometry in
                geometry.contentOffset.y + geometry.contentInsets.top
            } action: { _, newOffset in
                scrollButtonIsHidden = newOffset < rowItemHeight*2
            }
            .overlay(alignment: .bottomTrailing) {
                ScrollButton{
                    proxy.scrollTo(String.topId, anchor: .top)
                }
                .padding(16)
                .opacity(scrollButtonIsHidden ? 0 : 1)
                .animation(.easeInOut(duration: 0.2), value: scrollButtonIsHidden)
            }
        }
    }
}

extension CGFloat {
    fileprivate static let rowItemHeight: Self = 112
}

extension String {
    fileprivate static let topId = "top"
}

#Preview {
    MainView(viewModel: MainViewModel())
}
