//
//  ScrollButton.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 16.03.2026.
//

import SwiftUI

struct ScrollButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            withAnimation {
                action()
            }
        }) {
            Image(.scrollArrow)
                .frame(width: 40, height: 40)
                .background(Circle().fill(.white))
                .shadow(color: .black.opacity(0.25), radius: 6, x: 1, y: 1)
        }
        .buttonStyle(.plain)
    }
}
