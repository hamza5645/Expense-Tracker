//
//  Date+Extentions.swift
//  Expense Tracker
//
//  Created by Hamza Osama on 6/23/24.
//

import SwiftUI

extension Date {
    var startOfMonth: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: self)
        
        return calendar.date(from: components) ?? self
    }
    
    var endOfMonth: Date {
        let calendar = Calendar.current
        
        return calendar.date(byAdding: .init(month: 1, minute: -1),to: self.startOfMonth) ?? self
    }
}
