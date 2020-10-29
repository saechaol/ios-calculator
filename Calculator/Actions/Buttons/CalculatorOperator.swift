//
//  Operator.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/28/20.
//

import UIKit

class CalculatorOperator {
    
    /**
     # calculateAction(operation: Operation, firstOperand: String, secondOperant: String, base: Base)
     - Parameters:
        - operation: The operation to perform.
        - firstOperand: The first operand to use in the calculation.
        - secondOperand: The second operand to use in the calculation.
        - base: The numerical base to perform the calculation in.
     Calculates the value of the first operand with respect to the second operand, in the specified base.
     */
    func calculateAction(operation: Operation, firstOperand: String, secondOperand: String, base: Base) -> String {
        var calculation = "ERROR"
        switch operation {
        case .ADDITION:
            calculation = add(base: base, x: firstOperand, y: secondOperand)
        case .SUBTRACTION:
            calculation = sub(base: base, x: firstOperand, y: secondOperand)
        case .MULTIPLICATION:
            calculation = mul(base: base, x: firstOperand, y: secondOperand)
        case .DIVISION:
            calculation = div(base: base, x: firstOperand, y: secondOperand)
        case .MODULO:
            calculation = mod(base: base, x: firstOperand, y: secondOperand)
        case .AND:
            calculation = and(base: base, x: firstOperand, y: secondOperand)
        case .OR:
            calculation = or(base: base, x: firstOperand, y: secondOperand)
        case .XOR:
            calculation = xor(base: base, x: firstOperand, y: secondOperand)
        }
        return calculation
    }
    
    func add(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                let calculation = intX.addingReportingOverflow(intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                let calculation = intX.addingReportingOverflow(intY)
                if !calculation.overflow {
                    return "\(calculation.partialValue)"
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                let calculation = intX.addingReportingOverflow(intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 8, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                let calculation = intX.addingReportingOverflow(intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 2, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        }
        return "ERROR"
    }
    
    func sub(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                let calculation = intX.subtractingReportingOverflow(intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                let calculation = intX.subtractingReportingOverflow(intY)
                if !calculation.overflow {
                    return "\(calculation.partialValue)"
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                let calculation = intX.subtractingReportingOverflow(intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 8, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                let calculation = intX.subtractingReportingOverflow(intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 2, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        }
        return "ERROR"
    }
    
    func mul(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                let calculation = intX.multipliedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                let calculation = intX.multipliedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return "\(calculation.partialValue)"
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                let calculation = intX.multipliedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 8, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                let calculation = intX.multipliedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 2, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        }
        return "ERROR"
    }
    
    func div(base: Base, x: String, y: String) -> String {
        if y == "0" {
            return "ERROR"
        }
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                let calculation = intX.dividedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                let calculation = intX.dividedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return "\(calculation.partialValue)"
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                let calculation = intX.dividedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 8, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                let calculation = intX.dividedReportingOverflow(by: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 2, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        }
        return "ERROR"
    }
    
    func mod(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                let calculation = intX.remainderReportingOverflow(dividingBy: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                let calculation = intX.remainderReportingOverflow(dividingBy: intY)
                if !calculation.overflow {
                    return "\(calculation.partialValue)"
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                let calculation = intX.remainderReportingOverflow(dividingBy: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 8, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                let calculation = intX.remainderReportingOverflow(dividingBy: intY)
                if !calculation.overflow {
                    return String(calculation.partialValue, radix: 2, uppercase: true)
                } else {
                    return "OVERFLOW ERROR"
                }
            }
        }
        return "ERROR"
    }
    
    func and(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                return String(intX & intY, radix: 16, uppercase: true)
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                return "\(intX & intY)"
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                return String(intX & intY, radix: 8, uppercase: true)
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                return String(intX & intY, radix: 2, uppercase: true)
            }
        }
        return "ERROR"
    }
    
    func or(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                return String(intX | intY, radix: 16, uppercase: true)
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                return "\(intX | intY)"
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                return String(intX | intY, radix: 8, uppercase: true)
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                return String(intX | intY, radix: 2, uppercase: true)
            }
        }
        return "ERROR"
    }
    
    func xor(base: Base, x: String, y: String) -> String {
        switch base {
        case .HEXADECIMAL:
            if let intX = Int(x, radix: 16), let intY = Int(y, radix: 16) {
                return String(intX ^ intY, radix: 16, uppercase: true)
            }
        case .DECIMAL:
            if let intX = Int(x), let intY = Int(y) {
                return "\(intX ^ intY)"
            }
        case .OCTAL:
            if let intX = Int(x, radix: 8), let intY = Int(y, radix: 8) {
                return String(intX ^ intY, radix: 8, uppercase: true)
            }
        case .BINARY:
            if let intX = Int(x, radix: 2), let intY = Int(y, radix: 2) {
                return String(intX ^ intY, radix: 2, uppercase: true)
            }
        }
        return "ERROR"
    }
}
