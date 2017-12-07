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
        let five = Dollar(5)
        XCTAssertEqual(Dollar(10), five.times(2))
        XCTAssertEqual(Dollar(15), five.times(3))
    }

    func testEquality() {
        XCTAssertTrue(Dollar(5) == Dollar(5))
        XCTAssertFalse(Dollar(5) == Dollar(6))
        XCTAssertTrue(Franc(5) == Franc(5))
        XCTAssertFalse(Franc(5) == Franc(6))
    }

    func testFrancMultiplication() {
        let five = Franc(5)
        XCTAssertEqual(Franc(10), five.times(2))
        XCTAssertEqual(Franc(15), five.times(3))
    }
}
