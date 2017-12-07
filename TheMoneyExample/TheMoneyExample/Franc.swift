//
//  Franc.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2017/12/07.
//  Copyright © 2017年 U-NEXT. All rights reserved.
//

import Foundation

class Franc: Money {

    func times(_ multiplier: Int) -> Franc {
        return Franc.init(amount * multiplier)
    }
}
