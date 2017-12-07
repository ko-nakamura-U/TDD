//
//  Franc.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/07.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Franc: Money, Equatable {

    static func ==(lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    func times(_ multiplier: Int) -> Franc {
        return Franc.init(amount * multiplier)
    }
}
