//
//  Base.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/28/20.
//

import UIKit

class CalculatorBase {
    func wasPressed(calcDisplay: UILabel, operand: String, to: Base, from: Base) -> String {
        let input = calcDisplay.text!
        switch from {
        case .HEXADECIMAL:
            if let value = Int(input, radix: 16) {
                switch to {
                case .HEXADECIMAL:
                    return "\(operand)"
                case .DECIMAL:
                    calcDisplay.text = "\(value)"
                    return "\(value)"
                case .OCTAL:
                    calcDisplay.text = String(value, radix: 8)
                    return calcDisplay.text!
                case .BINARY:
                    calcDisplay.text = String(value, radix: 2)
                    return calcDisplay.text!
                }
            }
        case .DECIMAL:
            if let value = Int(input, radix: 10) {
                switch to {
                case .HEXADECIMAL:
                    calcDisplay.text = String(value, radix: 16, uppercase: true)
                    return calcDisplay.text!
                case .DECIMAL:
                    return "\(operand)"
                case .OCTAL:
                    calcDisplay.text = String(value, radix: 8)
                    return calcDisplay.text!
                case .BINARY:
                    calcDisplay.text = String(value, radix: 2)
                    return calcDisplay.text!
                }
            }
        case .OCTAL:
            if let value = Int(input, radix: 8) {
                switch to {
                case .HEXADECIMAL:
                    calcDisplay.text = String(value, radix: 16, uppercase: true)
                    return calcDisplay.text!
                case .DECIMAL:
                    calcDisplay.text = "\(value)"
                    return "\(value)"
                case .OCTAL:
                    return "\(operand)"
                case .BINARY:
                    calcDisplay.text = String(value, radix: 2)
                    return calcDisplay.text!
                }
            }
        case .BINARY:
            if let value = Int(input, radix: 2) {
                switch to {
                case .HEXADECIMAL:
                    calcDisplay.text = String(value, radix: 16, uppercase: true)
                    return calcDisplay.text!
                case .DECIMAL:
                    calcDisplay.text = "\(value)"
                    return "\(value)"
                case .OCTAL:
                    calcDisplay.text = String(value, radix: 8)
                    return calcDisplay.text!
                case .BINARY:
                    return "\(operand)"
                }
            }
        }
        return "ERROR"
    }
}
