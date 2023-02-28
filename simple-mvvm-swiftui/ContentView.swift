//
//  ContentView.swift
//  simple-mvvm-swiftui
//
//  Created by Nguyen Van Thuan on 28/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ItemListView(viewModel: ItemViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
