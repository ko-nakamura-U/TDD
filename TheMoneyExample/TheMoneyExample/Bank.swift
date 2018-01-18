//
//  Bank.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/28.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Bank {

    private var rates: [Pair : Int] = [:]

    func reduced(_ source: Expression, _ to: String) -> Money {
        return source.reduce(self, to)
    }

    func addRate(_ from: String, _ to: String, _ rate: Int) {
        rates[Pair(from, to)] = rate
    }

    func rate(_ from: String, _ to: String) -> Int {
        return from == to ? 1 : rates[Pair(from, to)]!  // TODO: error case
    }
}
