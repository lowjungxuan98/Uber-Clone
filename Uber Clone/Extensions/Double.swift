//
//  Double.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 18/11/2022.
//

import Foundation
extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }

    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? ""
    }
}
