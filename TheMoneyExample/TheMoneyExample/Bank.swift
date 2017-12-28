//
//  Bank.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/28.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Bank {
    func reduced(_ source: Expression, _ to: String) -> Money {
        return source.reduce(to)
    }
}
