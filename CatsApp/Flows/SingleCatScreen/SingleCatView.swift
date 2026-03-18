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
    
    init(viewModel: SingleCatViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Text(viewModel.cat.name)
    }
}

#Preview {
    SingleCatView(
        viewModel: SingleCatViewModel(
            cat: CatModel.fixture()
        )
    )
}
