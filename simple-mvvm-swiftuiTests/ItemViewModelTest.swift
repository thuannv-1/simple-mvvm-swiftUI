//
//  ItemViewModelTest.swift
//  simple-mvvm-swiftuiTests
//
//  Created by Nguyen Van Thuan on 28/02/2023.
//

import XCTest
@testable import simple_mvvm_swiftui

class ItemViewModelTest: XCTestCase {
    
    var viewModel: ItemViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = ItemViewModel()
    }
    
    func test_fetchItems() {
        // act
        viewModel.fetchItems()
        
        // assert
        XCTAssertTrue(!viewModel.items.isEmpty)
    }
}
