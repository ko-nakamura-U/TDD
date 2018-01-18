//
//  Sum.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/28.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Sum: Expression {
    let augend: Money
    let addend: Money

    init(_ augend: Money, _ addend: Money) {
        self.augend = augend
        self.addend = addend
    }

    func reduce(_ bank: Bank, _ to: String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount, to)
    }
}
