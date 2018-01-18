//
//  Sum.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/28.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Sum: Expression {
    let augend: Expression
    let addend: Expression

    init(_ augend: Expression, _ addend: Expression) {
        self.augend = augend
        self.addend = addend
    }

    func plus(_ addend: Expression) -> Expression {
        return addend  // TODO: implement
    }

    func reduce(_ bank: Bank, _ to: String) -> Money {
        let amount = augend.reduce(bank, to).amount + addend.reduce(bank, to).amount
        return Money(amount, to)
    }
}
