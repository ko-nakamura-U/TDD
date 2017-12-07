//
//  MoneyTest.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/10/26.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

struct Dollar: Equatable {

    private var amount: Int

    init(_ amount: Int) {
        self.amount = amount
    }
    static func ==(lhs: Dollar, rhs: Dollar) -> Bool {
        return lhs.amount == rhs.amount
    }

    mutating func times(_ multiplier: Int) -> Dollar {
        return Dollar.init(amount * multiplier)
    }
}

struct Franc: Equatable {
    
    private var amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    static func ==(lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    mutating func times(_ multiplier: Int) -> Franc {
        return Franc.init(amount * multiplier)
    }
}
