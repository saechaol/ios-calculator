//
//  Operator.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/28/20.
//

import UIKit

class CalculatorOperator {
    
    func calculateAction(operation: Operation, firstOperand: String, secondOperand: String) -> String {
        var calculation = "ERROR"
        switch operation {
        case .ADDITION:
            calculation = add(x: firstOperand, y: secondOperand)
        case .SUBTRACTION:
            calculation = sub(x: firstOperand, y: secondOperand)
        case .MULTIPLICATION:
            calculation = mul(x: firstOperand, y: secondOperand)
        case .DIVISION:
            calculation = div(x: firstOperand, y: secondOperand)
        case .MODULO:
            calculation = mod(x: firstOperand, y: secondOperand)
        case .AND:
            calculation = and(x: firstOperand, y: secondOperand)
        case .OR:
            calculation = or(x: firstOperand, y: secondOperand)
        case .XOR:
            calculation = xor(x: firstOperand, y: secondOperand)
        }
        return calculation
    }
    
    func add(x: String, y: String) -> String {
        return ""
    }
    
    func sub(x: String, y: String) -> String {
        return ""
    }
    
    func mul(x: String, y: String) -> String {
        return ""
    }
    
    func div(x: String, y: String) -> String {
        return ""
    }
    
    func mod(x: String, y: String) -> String {
        return ""
    }
    
    func and(x: String, y: String) -> String {
        return ""
    }
    
    func or(x: String, y: String) -> String {
        return ""
    }
    
    func xor(x: String, y: String) -> String {
        return ""
    }
}
