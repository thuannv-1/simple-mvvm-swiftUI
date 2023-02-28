//
//  ItemStore.swift
//  simple-mvvm-swiftui
//
//  Created by Nguyen Van Thuan on 28/02/2023.
//

import SwiftUI

/**
 Model
 * Item model define the data
 * ItemStore define how to fetch the datas
 */

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class ItemStore {
    @Published var items = [Item]()

    func fetchItems() {
        // Fetch items from server
        items = [Item(name: "Item 1"), Item(name: "Item 2")]
    }
}
