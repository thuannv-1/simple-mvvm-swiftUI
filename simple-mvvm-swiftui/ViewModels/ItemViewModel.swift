//
//  ItemViewModel.swift
//  simple-mvvm-swiftui
//
//  Created by Nguyen Van Thuan on 28/02/2023.
//

import SwiftUI
import Combine

/**
 ViewModel
 * ViewModel (ItemViewModel) that observes changes in the Model and exposes properties to the View
 */

class ItemViewModel: ObservableObject {
    @Published var items = [Item]()

    private var itemStore = ItemStore()

    func fetchItems() {
        itemStore.fetchItems()
    }

    private var cancellables = Set<AnyCancellable>()

    init() {
        itemStore.$items
            .assign(to: \.items, on: self)
            .store(in: &cancellables)
    }
}
