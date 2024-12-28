//
//  Enumerations.swift
//  CalculatorAppSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import Foundation

enum Operation {
    case add, subtract, multiply, divide, equal, none, clear
}

enum CalcButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "÷"
    case multiply = "×"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "IMGplus.forwardslash.minus"
    case undo = "IMGarrow.counterclockwise"
}

let enumOperators: [CalcButton] = [
    .subtract, .add, .multiply, .divide
]

let multiplySymbol = CalcButton.multiply.rawValue
let divisionSymbol = CalcButton.divide.rawValue

let addSymbol = CalcButton.add.rawValue
let subtractSymbol = CalcButton.subtract.rawValue
let operators: String = "+-\(multiplySymbol) \(divisionSymbol)"

let percentSymbol = CalcButton.percent.rawValue
let negativeSymbol = CalcButton.negative.rawValue
