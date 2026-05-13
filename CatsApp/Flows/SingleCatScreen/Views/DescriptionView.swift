//
//  DescriptionView.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 03.04.2026.
//

import SwiftUI

enum DescriptionType: Hashable {
    case text(title: String, description: String)
    case feature(title: String, rate: Int)
    
    var title: String {
        switch self {
        case .text(let title, _):
            return title
        case .feature(let title, _):
            return title
        }
    }
}

struct DescriptionView: View {
    let type: DescriptionType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(type.title)
                .font(.system(size: 15, weight: .regular))
                .foregroundStyle(.textGray)
            switch type {
            case .text(_, let description):
                Text(description)
                    .font(.system(size: 17, weight: .regular))
            case .feature(_, let rate):
                HStack(spacing: 16) {
                    Text("\(rate)/5")
                    HStack(spacing: 4) {
                        ForEach(0..<5, id: \.self) { i in
                            Capsule()
                                .frame(height: 6)
                                .foregroundStyle(i < rate ? .blue : .black.opacity(0.08))
                                
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    DescriptionView(
        type: .text(
            title: LocalizableStrings.description,
            description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals."
        )
    )
}
