//
//  TheMoneyExampleTests.swift
//  TheMoneyExampleTests
//
//  Created by ko-nakamura on 2017/10/26.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import XCTest
@testable import TheMoneyExample

class TheMoneyExampleTests: XCTestCase {

    func testMultiplication() {
        var five = Dollar(5)
        var product = five.times(2)
        XCTAssertEqual(product.amount, 10)
        product = five.times(3)
        XCTAssertEqual(product.amount, 15)
    }

    func testEquality() {
        XCTAssertTrue(Dollar(5) == Dollar(5))
        XCTAssertFalse(Dollar(5) == Dollar(6))
    }
}
