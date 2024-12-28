//
//  StringHelperFunctions.swift
//  CalculatorAppSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import Foundation

///
/// Return last character if it exists
///  Otherwise return  an empty string 

func getLastChar(str: String) -> String {
    return str.isEmpty ? "" : String(str.last!)
}

func lastCharacterIsEqualTo(str: String, char: String) -> Bool {
    let last = getLastChar(str: str)
    return last == char
}

func formatResult(val: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.maximumFractionDigits = 16
    let result = numberFormatter.string(from: NSNumber(value: val)) ?? "0"
    
    return result
}

func lastCharacterIsDigit(str: String) -> Bool {
    return "0123456789".contains(getLastChar(str: str))
}

func lastCharacterIsDigitOrPercent(str: String) -> Bool {
    return "0123456789%".contains(getLastChar(str: str))
}
