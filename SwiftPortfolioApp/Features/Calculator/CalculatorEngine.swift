//
//  CalculatorEngine.swift
//  SwiftPortfolioApp
//
//  Created by Kadin Pegram on 7/20/26.
//
enum CalculatorOperation: Equatable {
    case addition, subtraction, multiplication, division

    var symbol: String {
        switch self {
        case .addition: "+"
        case .subtraction: "-"
        case .multiplication: "×"
        case .division: "÷"
        }
    }
}

struct CalculatorEngine {
    private var currentInput = "0"
    private(set) var limit = 10

    private(set) var pendingOperation: CalculatorOperation?
    private var usedOperation: CalculatorOperation?
    private var firstOperand: Double?
    private var firstOperandText: String?
    private var lastOperand: Double?
    private var shouldStartNewInput: Bool = false

    var display: String {
        if let firstOperandText, let pendingOperation {
            firstOperandText + pendingOperation.symbol + currentInput
        } else {
            currentInput
        }
    }
    
    private func formatted(_ value: Double) -> String {
        if value.truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(value))
        } else {
            return String(value)
        }
    }

    mutating func appendDigit(_ digit: String) {
        if shouldStartNewInput {
            currentInput = digit
            shouldStartNewInput = false
        } else if currentInput == "0" {
            currentInput = digit
        } else if currentInput.count < limit {
            currentInput = currentInput + digit
        }
    }

    mutating func clearInput() {
        currentInput = "0"
        firstOperand = nil
        firstOperandText = nil
        lastOperand = nil
        pendingOperation = nil
        usedOperation = nil
        shouldStartNewInput = false
    }

    mutating func appendDecimal() {
        if shouldStartNewInput {
            currentInput = "0."
            shouldStartNewInput = false
            return
        }

        guard !currentInput.contains("."),
            currentInput.count < limit
        else {
            return
        }

        currentInput += "."
    }

    mutating func selectOperation(_ operation: CalculatorOperation) {
        guard let currentValue = Double(currentInput) else {
            return
        }

        firstOperand = currentValue
        firstOperandText = currentInput
        pendingOperation = operation
        currentInput = ""
        shouldStartNewInput = true
    }

    mutating func toggleSign() {
        guard let currentValue = Double(currentInput)
        else { return }
        
        let result = -currentValue
        currentInput = formatted(result)
    }

    mutating func equals() {
        guard let op1 = firstOperand, let operation = pendingOperation,
            let currentValue = Double(currentInput)
        else { return }

        let result =
            switch operation {
            case .addition:
                op1 + currentValue
            case .subtraction:
                op1 - currentValue
            case .multiplication:
                op1 * currentValue
            case .division:
                op1 / currentValue
            }

        currentInput = formatted(result)
        lastOperand = currentValue
        usedOperation = operation
        firstOperand = nil
        firstOperandText = nil
        pendingOperation = nil
        shouldStartNewInput = true
    }
}
