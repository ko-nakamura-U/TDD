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
        XCTAssertFalse(Money.franc(5) == Money.dollar(5))
    }

    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency())
        XCTAssertEqual("CHF", Money.franc(1).currency())
    }

    func testSimpleAddition() {
        let five = Money.dollar(5)
        let sum = five.plus(five)
        let bank = Bank()
        let reduced = bank.reduced(sum, "USD")
        XCTAssertEqual(Money.dollar(10), reduced)
    }

    func testPlusReturnsSum() {
        let five = Money.dollar(5)
        let result = five.plus(five)
        let sum = result as! Sum
        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }

    func testReduceSum() {
        let sum = Sum(Money.dollar(3), Money.dollar(4))
        let bank = Bank()
        let result = bank.reduced(sum, "USD")
        XCTAssertEqual(Money.dollar(7), result)
    }

    func testReduceMoney() {
        let bank = Bank()
        let result = bank.reduced(Money.dollar(1), "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }
}
