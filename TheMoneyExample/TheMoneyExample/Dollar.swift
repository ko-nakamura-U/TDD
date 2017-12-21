//
//  Dollar.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/10/26.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Dollar: Money {

    override func times(_ multiplier: Int) -> Money {
        return Money.dollar(amount * multiplier)
    }
}
