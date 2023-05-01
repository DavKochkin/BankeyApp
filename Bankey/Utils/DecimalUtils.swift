//
//  DecimalUtils.swift
//  Bankey
//
//  Created by David Kochkin on 02.05.2023.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
