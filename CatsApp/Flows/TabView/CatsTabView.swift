//
//  CatsTabView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 11.03.2026.
//
import SwiftUI

struct CatsTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                MainView()
                    .navigationTitle(LocalizableStrings.cats)
                    .appToolbar()
            }
            .tabItem {
                Label(LocalizableStrings.cats, systemImage: "cat")
            }
            NavigationStack {
                FavoritesView()
                    .navigationTitle(LocalizableStrings.favorites)
                    .appToolbar()
            }
            .tabItem {
                Label(LocalizableStrings.favorites, systemImage: "heart")
            }
        }
    }
}

struct AppToolbarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Color.navbar, for: .navigationBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color.white.opacity(0.95), for: .tabBar)
    }
}

extension View {
    func appToolbar() -> some View {
        modifier(AppToolbarModifier())
    }
}

#Preview {
    CatsTabView()
}
