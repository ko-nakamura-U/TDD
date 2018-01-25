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
        XCTAssertEqual(Money.dollar(10), five.times(2) as! Money)
        XCTAssertEqual(Money.dollar(15), five.times(3) as! Money)
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

    func testReduceMoneyDifferentCurrency() {
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let result = bank.reduced(Money.franc(2), "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }

    func testIdentityRate() {
        XCTAssertEqual(1, Bank().rate("USD", "USD"))
    }

    func testMixedAddition() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let result = bank.reduced(fiveBucks.plus(tenFrancs), "USD")
        XCTAssertEqual(Money.dollar(10), result)
    }

    func testSumPlusMoney() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let sum = Sum(fiveBucks, tenFrancs).plus(fiveBucks)
        let result = bank.reduced(sum, "USD")
        XCTAssertEqual(Money.dollar(15), result)
    }

    func testSumTimes() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let sum = Sum(fiveBucks, tenFrancs).times(2)
        let result = bank.reduced(sum, "USD")
        XCTAssertEqual(Money.dollar(20), result)
    }
}
