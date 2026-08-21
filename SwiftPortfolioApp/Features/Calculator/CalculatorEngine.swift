//
//  CalculatorEngine.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//
enum CalculatorOperation: Equatable {
    case addition, subtraction, multiplication, division
}

struct CalculatorEngine {
    private(set) var display = "0"
    private(set) var limit = 10

    private(set) var pendingOperation: CalculatorOperation?
    private var firstOperand: Double?
    private var shouldStartNewInput: Bool = false

    mutating func appendDigit(_ digit: String) {
        if shouldStartNewInput {
            display = digit
            shouldStartNewInput = false
        } else if display == "0" {
            display = digit
        } else if display.count < limit {
            display = display + digit
        }
    }

    mutating func clearInput() {
        display = "0"
        firstOperand = nil
        pendingOperation = nil
        shouldStartNewInput = false
    }

    mutating func appendDecimal() {
        if shouldStartNewInput {
            display = "0."
            shouldStartNewInput = false
            return
        }
        
        guard !display.contains("."),
            display.count < limit
        else {
            return
        }

        display += "."
    }

    mutating func selectOperation(_ operation: CalculatorOperation) {
        guard let currentValue = Double(display) else {
            return
        }

        firstOperand = currentValue
        pendingOperation = operation
        shouldStartNewInput = true
    }
}
