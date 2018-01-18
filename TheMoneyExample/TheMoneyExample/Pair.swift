//
//  Pair.swift
//  TheMoneyExample
//
//  Created by ko-nakamura on 2018/01/18.
//  Copyright © 2018年 U-NEXT. All rights reserved.
//

import Foundation

class Pair: Hashable {
    var hashValue: Int {
        return 0
    }
    private let from: String
    private let to: String

    init(_ from: String, _ to: String) {
        self.from = from
        self.to = to
    }

    static func ==(lhs: Pair, rhs: Pair) -> Bool {
        return lhs.from == rhs.from
            && lhs.to == rhs.to
    }
}
