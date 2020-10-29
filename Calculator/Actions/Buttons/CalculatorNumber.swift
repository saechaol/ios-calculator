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
        - operationPerformed: Indicates if a previous action has been performed.
        - input: The number to be appended.
     */
    @discardableResult func wasPressed(calcDisplay: UILabel, operationPerformed: Bool, input: String) -> Bool {
        if calcDisplay.text == "0" || operationPerformed {
            calcDisplay.text = ""
            calcDisplay.text?.append(input)
            return false
        } else {
            calcDisplay.text?.append(input)
            return true
        }
    }
}
