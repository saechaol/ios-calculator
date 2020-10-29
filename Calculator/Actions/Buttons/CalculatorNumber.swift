//
//  Number.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/28/20.
//

import UIKit

class CalculatorNumber {
    /**
     # wasPressed(calcDisplay: UILabel)
     - Parameters:
        - calcDisplay: The current display value on the calculator.
     Appends a zero to the calculator, if the value currently is not a zero already.
     */
    func wasPressed(calcDisplay: UILabel) {
        if calcDisplay.text != "0" {
            calcDisplay.text?.append("0")
        }
    }
    
    /**
     # wasPressed(calcDisplay: UILabel, actionPerformed: Bool, input: String)
     - Parameters:
        - calcDisplay: The current display value in the calculator.
        - lastDisplay: The last display value in the calculator.
        - operationPerformed: Indicates if a previous action has been performed.
        - input: The number to be appended.
     Appends the input value to the calculator's display text String.
     */
    @discardableResult func wasPressed(calcDisplay: UILabel, lastDisplay: UILabel, operationPerformed: Bool, input: String) -> Bool {
        if calcDisplay.text == "0" || operationPerformed {
            if operationPerformed {
                lastDisplay.text = calcDisplay.text
            }
            calcDisplay.text = ""
            calcDisplay.text?.append(input)
            return false
        } else {
            calcDisplay.text?.append(input)
            return false
        }
    }
    
    /**
    # delete(calcDisplay: UILabel)
     - Parameters:
        - calcDisplay: The current display value in the calculator.
     Removes the last character from the calculator's display.
     */
    func delete(calcDisplay: UILabel) {
        if var input = calcDisplay.text {
            if input.count > 1 {
                input.removeLast()
                calcDisplay.text = input
            } else {
                calcDisplay.text = "0"
            }
        }
    }
}
