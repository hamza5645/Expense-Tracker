//
//  Transaction.swift
//  Expense Tracker
//
//  Created by Hamza Osama on 6/18/24.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
        //properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    //Extracting Color value from tintColor String
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
}
