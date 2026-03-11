//
//  MainView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel = MainViewModel()
    @State private var scrollButtonIsHidden = true
    
    var body: some View {
        ScrollViewReader { proxy in
            ZStack(alignment: .bottomTrailing) {
                ScrollView (showsIndicators: false) {
                    LazyVStack(spacing: 12) {
                        ForEach(viewModel.cats) { cat in
                            MainRowItem(cat: cat)
                        }
                    }
                    .id("top")
                    .padding(.all, 16)
                }
                .onScrollGeometryChange(for: CGFloat.self) { geometry in
                    geometry.contentOffset.y + geometry.contentInsets.top
                } action: { _, newOffset in
                    scrollButtonIsHidden = newOffset < 252
                }
                Button(action: {
                    withAnimation {
                        proxy.scrollTo("top", anchor: .top)
                    }
                }) {
                    Image(.scrollButton)
                }
                .padding(16)
                .opacity(scrollButtonIsHidden ? 0 : 1)
                .animation(.easeInOut(duration: 0.2), value: scrollButtonIsHidden)
            }
        }
    }
}

#Preview {
    MainView()
}
