//
//  Dollar.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/10/26.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Dollar: Money, Equatable {

    static func ==(lhs: Dollar, rhs: Dollar) -> Bool {
        return lhs.amount == rhs.amount
    }

    func times(_ multiplier: Int) -> Dollar {
        return Dollar.init(amount * multiplier)
    }
}
