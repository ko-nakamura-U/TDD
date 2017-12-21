//
//  Money.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/07.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Money: Equatable {
    var amount: Int
    var currencyName: String

    init(_ amount: Int, _ currencyName: String) {
        self.amount = amount
        self.currencyName = currencyName
    }

    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }

    func times(_ multiplier: Int) -> Money {
        return Money.init(amount * multiplier, currencyName)
    }

    func currency() -> String {
        return currencyName
    }

    static func dollar(_ amount: Int) -> Money {
        return Dollar(amount, "USD")
    }
    static func franc(_ amount: Int) -> Money {
        return Franc(amount, "CHF")
    }
}
