//
//  Expression.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/28.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

protocol Expression {
    func times(_ multiplier: Int) -> Expression
    func plus(_ addend: Expression) -> Expression
    func reduce(_ bank: Bank, _ to: String) -> Money
}
