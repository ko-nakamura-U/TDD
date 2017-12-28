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
        let five = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2))
        XCTAssertEqual(Money.dollar(15), five.times(3))
    }

    func testEquality() {
        XCTAssertTrue(Money.dollar(5) == Money.dollar(5))
        XCTAssertFalse(Money.dollar(5) == Money.dollar(6))
        XCTAssertTrue(Money.franc(5) == Money.franc(5))
        XCTAssertFalse(Money.franc(5) == Money.franc(6))
        XCTAssertFalse(Money.franc(5) == Money.dollar(5))
    }

    func testFrancMultiplication() {
        let five = Money.franc(5)
        XCTAssertEqual(Money.franc(10), five.times(2))
        XCTAssertEqual(Money.franc(15), five.times(3))
    }

    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency())
        XCTAssertEqual("CHF", Money.franc(1).currency())
    }

    func testDifferentClassEquality() {
        XCTAssertEqual(Money(10, "CHF"), Franc(10, "CHF"))
    }
}
