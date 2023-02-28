//
//  ItemListView.swift
//  simple-mvvm-swiftui
//
//  Created by Nguyen Van Thuan on 28/02/2023.
//

import SwiftUI

/**
 ViewModel
 * View (ItemListView) that binds to the ViewModel and displays the data
 */

struct ItemListView: View {
    @ObservedObject var viewModel: ItemViewModel

    var body: some View {
        List(viewModel.items) { item in
            Text(item.name)
        }
        .onAppear {
            viewModel.fetchItems()
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(viewModel: ItemViewModel())
    }
}
