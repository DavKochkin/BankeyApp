//
//  Date+Utils.swift
//  Bankey
//
//  Created by David Kochkin on 22.05.2023.
//

import Foundation


extension Date {
    static var bankeyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "MDT")
        return formatter
    }
    
    var monthDayYearString: String {
        let dateDormatter = Date.bankeyDateFormatter
        dateDormatter.dateFormat = "MMM d, yyyy"
        return dateDormatter.string(from: self )
    }
}
