//
//  Double.swift
//  CryptoTracker
//
//  Created by Daniel on 27.12.2022.
//

import Foundation

extension Double {
    
    /// Converts a Double into Currency with 2 decimal places
    ///```
    ///Convert 1234,56 to $1,234.56
    /// ```
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "USD"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    /// Converts a Double into a Currency as a String with 2-6 decimal places
    ///```
    ///Convert 1234,56 to "$1,234.56"
    /// ```
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    
    /// Converts a Double into Currency with 2-6 decimal places
    ///```
    ///Convert 1234,56 to $1,234.56
    ///Convert 12.3456 to $12.3456
    ///Convert 0.123456 to $.123456
    /// ```
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "USD"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    
    /// Converts a Double into a Currency as a String with 2-6 decimal places
    ///```
    ///Convert 1234,56 to "$1,234.56"
    ///Convert 12.3456 to "$12.3456"
    ///Convert 0.123456 to "$.123456"
    /// ```
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double into string representation
    ///```
    ///Convert 1.2345 to "1.236"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts a Double into string representation with persent symbol
    ///```
    ///Convert 1.2345 to "1.236%"
    /// ```
    func asPersentString() -> String {
        return asNumberString() + "%"
    }
}
