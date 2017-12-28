//
//  Money.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/07.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Money: Equatable, Expression {

    var amount: Int
    var currencyName: String

    init(_ amount: Int, _ currencyName: String) {
        self.amount = amount
        self.currencyName = currencyName
    }

    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
            && lhs.currencyName == rhs.currencyName
    }

    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, currencyName)
    }

    func plus(_ addend: Money) -> Expression {
        return Money(amount + addend.amount, currencyName)
    }

    func currency() -> String {
        return currencyName
    }

    static func dollar(_ amount: Int) -> Money {
        return Money(amount, "USD")
    }
    static func franc(_ amount: Int) -> Money {
        return Money(amount, "CHF")
    }
}
