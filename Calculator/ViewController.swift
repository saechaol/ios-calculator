//
//  ViewController.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/26/20.
//

import UIKit

class ViewController: UIViewController {
    
    // Initialize Interface Builder outlets
    @IBOutlet weak var calculationDisplay: PaddedLabel!
    @IBOutlet weak var lastCalculationDisplay: PaddedLabel!
    
    @IBOutlet weak var hexBaseButton: UIButton!
    @IBOutlet weak var decBaseButton: UIButton!
    @IBOutlet weak var octBaseButton: UIButton!
    @IBOutlet weak var binBaseButton: UIButton!
    @IBOutlet weak var allClearButton: UIButton!
    
    @IBOutlet weak var hexDButton: UIButton!
    @IBOutlet weak var hexEButton: UIButton!
    @IBOutlet weak var hexFButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!
    
    @IBOutlet weak var hexAButton: UIButton!
    @IBOutlet weak var hexBButton: UIButton!
    @IBOutlet weak var hexCButton: UIButton!
    @IBOutlet weak var moduloButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    
    @IBOutlet weak var intSevenButton: UIButton!
    @IBOutlet weak var intEightButton: UIButton!
    @IBOutlet weak var intNineButton: UIButton!
    @IBOutlet weak var andButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    
    @IBOutlet weak var intFourButton: UIButton!
    @IBOutlet weak var intFiveButton: UIButton!
    @IBOutlet weak var intSixButton: UIButton!
    @IBOutlet weak var orButton: UIButton!
    @IBOutlet weak var subtractionButton: UIButton!
    
    @IBOutlet weak var intOneButton: UIButton!
    @IBOutlet weak var intTwoButton: UIButton!
    @IBOutlet weak var intThreeButton: UIButton!
    @IBOutlet weak var xorButton: UIButton!
    @IBOutlet weak var additionButton: UIButton!
    
    @IBOutlet weak var intZeroButton: UIButton!
    @IBOutlet weak var negationButton: UIButton!
    @IBOutlet weak var notButton: UIButton!
    @IBOutlet weak var solveButton: UIButton!
    
    let highlightedButtonColor: UIColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    let regularButtonColor: UIColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    let operatorButtonColor: UIColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
    let disabledButtonColor: UIColor = #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)
    let whiteColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    
    var firstOperand: String!
    var secondOperand: String!
    var currentOperation: Operation!
    var base: Base!
    var operationPerformed: Bool! = false
    var style: UIStatusBarStyle = .lightContent
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if self.style == .default {
            self.style = .lightContent
        }
        return self.style
    }
    
    /**
     # viewDidLoad()
     Initializes the application after the ViewController successfully loads.
     The calculator is initialized to base 10 state, with 0 as an initial operator.
     */
    override func viewDidLoad() {
        // Initialize ViewController
        super.viewDidLoad()
        
        base = .DECIMAL
        decBaseButton.backgroundColor = highlightedButtonColor
        decBaseButton.isSelected = true
        calculationDisplay.text = "0"
        firstOperand = "0"
        
        setTitleColors()
        disableDecimalButtonActions()
    }
    
    @IBAction func intZeroPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay)
    }
    
    @IBAction func intOnePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "1")
    }
    
    @IBAction func intTwoPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "2")
    }
    
    @IBAction func intThreePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "3")
    }
    
    @IBAction func intFourPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "4")
    }
    
    @IBAction func intFivePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "5")
    }
    
    @IBAction func intSixPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "6")
    }
    
    @IBAction func intSevenPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "7")
    }
    
    @IBAction func intEightPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "8")
    }
    
    @IBAction func intNinePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "9")
    }
    
    @IBAction func hexAPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "A")
    }
    
    @IBAction func hexBPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "B")
    }
    
    @IBAction func hexCPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "C")
    }
    
    @IBAction func hexDPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "D")
    }
    
    @IBAction func hexEPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "E")
    }
    
    @IBAction func hexFPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        operationPerformed = number.wasPressed(calcDisplay: calculationDisplay, lastDisplay: lastCalculationDisplay, operationPerformed: operationPerformed, input: "F")
    }
    
    @IBAction func hexBasePressAction(_ sender: Any) {
        let baseControl = CalculatorBase()
        switch base {
        case .DECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .HEXADECIMAL, from: .DECIMAL)
            buttonSwitch(fromButton: decBaseButton, toButton: hexBaseButton)
        case .OCTAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .HEXADECIMAL, from: .OCTAL)
            buttonSwitch(fromButton: octBaseButton, toButton: hexBaseButton)
        case .BINARY:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .HEXADECIMAL, from: .BINARY)
            buttonSwitch(fromButton: binBaseButton, toButton: hexBaseButton)
        case .HEXADECIMAL:
            base = .HEXADECIMAL
        default:
            calculationDisplay.text = "ERROR"
            lastCalculationDisplay.text = ""
            enableButtonActions()
            return
        }
        base = .HEXADECIMAL
        enableButtonActions()
    }
    
    @IBAction func decBasePressAction(_ sender: Any) {
        let baseControl = CalculatorBase()
        switch base {
        case .HEXADECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .DECIMAL, from: .HEXADECIMAL)
            buttonSwitch(fromButton: hexBaseButton, toButton: decBaseButton)
        case .OCTAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .DECIMAL, from: .OCTAL)
            buttonSwitch(fromButton: octBaseButton, toButton: decBaseButton)
        case .BINARY:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .DECIMAL, from: .BINARY)
            buttonSwitch(fromButton: binBaseButton, toButton: decBaseButton)
        case .DECIMAL:
            base = .DECIMAL
        default:
            calculationDisplay.text = "ERROR"
            lastCalculationDisplay.text = ""
            enableButtonActions()
            return
        }
        base = .DECIMAL
        disableDecimalButtonActions()
    }
    
    @IBAction func octBasePressAction(_ sender: Any) {
        let baseControl = CalculatorBase()
        switch base {
        case .HEXADECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .OCTAL, from: .HEXADECIMAL)
            buttonSwitch(fromButton: hexBaseButton, toButton: octBaseButton)
        case .DECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .OCTAL, from: .DECIMAL)
            buttonSwitch(fromButton: decBaseButton, toButton: octBaseButton)
        case .BINARY:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .OCTAL, from: .BINARY)
            buttonSwitch(fromButton: binBaseButton, toButton: octBaseButton)
        case .OCTAL:
            base = .OCTAL
        default:
            calculationDisplay.text = "ERROR"
            lastCalculationDisplay.text = ""
            enableButtonActions()
            return
        }
        base = .OCTAL
        disableOctalButtonActions()
    }
    
    @IBAction func binBasePressAction(_ sender: Any) {
        let baseControl = CalculatorBase()
        switch base {
        case .HEXADECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .BINARY, from: .HEXADECIMAL)
            buttonSwitch(fromButton: hexBaseButton, toButton: binBaseButton)
        case .DECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .BINARY, from: .DECIMAL)
            buttonSwitch(fromButton: decBaseButton, toButton: binBaseButton)
        case .OCTAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .BINARY, from: .OCTAL)
            buttonSwitch(fromButton: octBaseButton, toButton: binBaseButton)
        case .BINARY:
            base = .BINARY
        default:
            calculationDisplay.text = "ERROR"
            lastCalculationDisplay.text = ""
            enableButtonActions()
            return
        }
        base = .BINARY
        disableBinaryButtonActions()
    }
    
    @IBAction func allClearPressAction(_ sender: Any) {
        disableButtonHighlights()
        calculationDisplay.text = "0"
        lastCalculationDisplay.text = ""
    }
    
    @IBAction func deletePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.delete(calcDisplay: calculationDisplay)
    }
    
    @IBAction func negationOperatorPressAction(_ sender: Any) {
        firstOperand = calculationDisplay.text
        switch base {
        case .HEXADECIMAL:
            if let value = Int(firstOperand, radix: 16) {
                calculationDisplay.text = String(value * -1, radix: 16)
            }
        case .DECIMAL:
            if let value = Int(firstOperand, radix: 10) {
                calculationDisplay.text = "\(value * -1)"
            }
        case .OCTAL:
            if let value = Int(firstOperand, radix: 8) {
                calculationDisplay.text = String(value * -1, radix: 8)
            }
        case .BINARY:
            if let value = Int(firstOperand, radix: 2) {
                calculationDisplay.text = String(value * -1, radix: 2)
            }
        default:
            calculationDisplay.text = "ERROR"
        }
    }
    
    @IBAction func moduloOperatorPressAction(_ sender: Any) {        disableButtonHighlights()
        moduloButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .MODULO
        calculationDisplay.text = "0"
    }
    
    @IBAction func divisionOperatorPressAction(_ sender: Any) {
        disableButtonHighlights()
        divisionButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .DIVISION
        calculationDisplay.text = "0"
    }
    
    @IBAction func andOperatorPressAction(_ sender: Any) {
        disableButtonHighlights()
        andButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .AND
        calculationDisplay.text = "0"
    }
    
    @IBAction func multiplicationOperatorPressAction(_ sender: Any) {
        disableButtonHighlights()
        multiplicationButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .MULTIPLICATION
        calculationDisplay.text = "0"
    }
    
    @IBAction func orOperatorPressAction(_ sender: Any) {
        disableButtonHighlights()
        orButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .OR
        calculationDisplay.text = "0"
    }
    
    @IBAction func subtractionOperatorPressAction(_ sender: Any) {
        disableButtonHighlights()
        subtractionButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .SUBTRACTION
        calculationDisplay.text = "0"
    }
    
    @IBAction func xorOperatorPressAction(_ sender: Any) {
        disableButtonHighlights()
        xorButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .XOR
        calculationDisplay.text = "0"
    }
    
    @IBAction func additionOperatorAction(_ sender: Any) {
        disableButtonHighlights()
        additionButton.backgroundColor = highlightedButtonColor
        firstOperand = calculationDisplay.text
        currentOperation = .ADDITION
        calculationDisplay.text = "0"
    }
    
    @IBAction func notOperatorPressAction(_ sender: Any) {
        firstOperand = calculationDisplay.text
        switch base {
        case .HEXADECIMAL:
            if let value = Int(firstOperand, radix: 16) {
                calculationDisplay.text = String(~value, radix: 16)
            }
        case .DECIMAL:
            if let value = Int(firstOperand, radix: 10) {
                calculationDisplay.text = "\(~value)"
            }
        case .OCTAL:
            if let value = Int(firstOperand, radix: 8) {
                calculationDisplay.text = String(~value, radix: 8)
            }
        case .BINARY:
            if let value = Int(firstOperand, radix: 2) {
                calculationDisplay.text = String(~value, radix: 2)
            }
        default:
            calculationDisplay.text = "ERROR"
        }
    }
    
    @IBAction func solveOperationPressAction(_ sender: Any) {
        let operation = CalculatorOperator()
        if operationPerformed {
            lastCalculationDisplay.text = calculationDisplay.text
        }
        disableButtonHighlights()
        secondOperand = calculationDisplay.text
        if currentOperation != nil {
            calculationDisplay.text = operation.calculateAction(operation: currentOperation, firstOperand: firstOperand, secondOperand: secondOperand, base: base)
            if (calculationDisplay.text != "ERROR" || calculationDisplay.text != "") {
                operationPerformed = true
            } else {
                lastCalculationDisplay.text = ""
            }
        } else {
            calculationDisplay.text = "0"
            lastCalculationDisplay.text = ""
        }
    }
    
    /**
     # setTitleColors()
     Called by **viewDidLoad()** to initialize UIButton titles based on their button states.
     */
    func setTitleColors() {
        hexBaseButton.setTitleColor(whiteColor, for: .selected)
        decBaseButton.setTitleColor(whiteColor, for: .selected)
        binBaseButton.setTitleColor(whiteColor, for: .selected)
        octBaseButton.setTitleColor(whiteColor, for: .selected)
        intTwoButton.setTitleColor(disabledButtonColor, for: .disabled)
        intThreeButton.setTitleColor(disabledButtonColor, for: .disabled)
        intFourButton.setTitleColor(disabledButtonColor, for: .disabled)
        intFiveButton.setTitleColor(disabledButtonColor, for: .disabled)
        intSixButton.setTitleColor(disabledButtonColor, for: .disabled)
        intSevenButton.setTitleColor(disabledButtonColor, for: .disabled)
        intEightButton.setTitleColor(disabledButtonColor, for: .disabled)
        intNineButton.setTitleColor(disabledButtonColor, for: .disabled)
        hexAButton.setTitleColor(disabledButtonColor, for: .disabled)
        hexBButton.setTitleColor(disabledButtonColor, for: .disabled)
        hexCButton.setTitleColor(disabledButtonColor, for: .disabled)
        hexDButton.setTitleColor(disabledButtonColor, for: .disabled)
        hexEButton.setTitleColor(disabledButtonColor, for: .disabled)
        hexFButton.setTitleColor(disabledButtonColor, for: .disabled)
    }
    
    /**
     # enableButtonActions()
     Reinitializes the enable state of all buttons
     */
    func enableButtonActions() {
        intTwoButton.isEnabled = true
        intThreeButton.isEnabled = true
        intFourButton.isEnabled = true
        intFiveButton.isEnabled = true
        intSixButton.isEnabled = true
        intSevenButton.isEnabled = true
        intEightButton.isEnabled = true
        intNineButton.isEnabled = true
        hexAButton.isEnabled = true
        hexBButton.isEnabled = true
        hexCButton.isEnabled = true
        hexDButton.isEnabled = true
        hexEButton.isEnabled = true
        hexFButton.isEnabled = true
    }
    
    /**
     # disableDecimalButtonActions()
     Disables buttons not applicable to numbers in base 10
     */
    func disableDecimalButtonActions() {
        enableButtonActions()
        hexAButton.isEnabled = false
        hexBButton.isEnabled = false
        hexCButton.isEnabled = false
        hexDButton.isEnabled = false
        hexEButton.isEnabled = false
        hexFButton.isEnabled = false
    }
    
    func disableBinaryButtonActions() {
        enableButtonActions()
        intTwoButton.isEnabled = false
        intThreeButton.isEnabled = false
        intFourButton.isEnabled = false
        intFiveButton.isEnabled = false
        intSixButton.isEnabled = false
        intSevenButton.isEnabled = false
        intEightButton.isEnabled = false
        intNineButton.isEnabled = false
        hexAButton.isEnabled = false
        hexBButton.isEnabled = false
        hexCButton.isEnabled = false
        hexDButton.isEnabled = false
        hexEButton.isEnabled = false
        hexFButton.isEnabled = false
    }
    
    func disableOctalButtonActions() {
        enableButtonActions()
        intEightButton.isEnabled = false
        intNineButton.isEnabled = false
        hexAButton.isEnabled = false
        hexBButton.isEnabled = false
        hexCButton.isEnabled = false
        hexDButton.isEnabled = false
        hexEButton.isEnabled = false
        hexFButton.isEnabled = false
    }
    
    func disableButtonHighlights() {
        additionButton.backgroundColor = operatorButtonColor
        subtractionButton.backgroundColor = operatorButtonColor
        multiplicationButton.backgroundColor = operatorButtonColor
        divisionButton.backgroundColor = operatorButtonColor
        andButton.backgroundColor = operatorButtonColor
        orButton.backgroundColor = operatorButtonColor
        xorButton.backgroundColor = operatorButtonColor
        moduloButton.backgroundColor = operatorButtonColor
    }
    
    func buttonSwitch(fromButton: UIButton, toButton: UIButton) {
        fromButton.backgroundColor = regularButtonColor
        fromButton.isSelected = false
        toButton.backgroundColor = highlightedButtonColor
        toButton.isSelected = true
    }
}

enum Operation {
    case ADDITION
    case SUBTRACTION
    case DIVISION
    case MULTIPLICATION
    case MODULO
    case AND
    case OR
    case XOR
}

enum Base {
    case DECIMAL
    case BINARY
    case HEXADECIMAL
    case OCTAL
}

