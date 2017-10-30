//
//  MoneyTest.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/10/26.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

struct Dollar {
    var amount: Int

    init(_ amount: Int) {
        self.amount = amount
    }

    mutating func times(_ multiplier: Int) {
        amount = amount * multiplier
    }
}