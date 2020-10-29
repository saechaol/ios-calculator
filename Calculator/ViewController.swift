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
    
    @IBOutlet weak var HexBaseButton: UIButton!
    @IBOutlet weak var DecBaseButton: UIButton!
    @IBOutlet weak var OctBaseButton: UIButton!
    @IBOutlet weak var BinBaseButton: UIButton!
    @IBOutlet weak var AllClearButton: UIButton!
    
    @IBOutlet weak var HexDButton: UIButton!
    @IBOutlet weak var HexEButton: UIButton!
    @IBOutlet weak var HexFButton: UIButton!
    @IBOutlet weak var DeleteButton: UIButton!
    @IBOutlet weak var AboutButton: UIButton!
    
    @IBOutlet weak var HexAButton: UIButton!
    @IBOutlet weak var HexBButton: UIButton!
    @IBOutlet weak var HexCButton: UIButton!
    @IBOutlet weak var ModuloButton: UIButton!
    @IBOutlet weak var DivisionButton: UIButton!
    
    @IBOutlet weak var IntSevenButton: UIButton!
    @IBOutlet weak var IntEightButton: UIButton!
    @IBOutlet weak var IntNineButton: UIButton!
    @IBOutlet weak var AndButton: UIButton!
    @IBOutlet weak var MultiplicationButton: UIButton!
    
    @IBOutlet weak var IntFourButton: UIButton!
    @IBOutlet weak var IntFiveButton: UIButton!
    @IBOutlet weak var IntSixButton: UIButton!
    @IBOutlet weak var OrButton: UIButton!
    @IBOutlet weak var SubtractionButton: UIButton!
    
    @IBOutlet weak var IntOneButton: UIButton!
    @IBOutlet weak var IntTwoButton: UIButton!
    @IBOutlet weak var IntThreeButton: UIButton!
    @IBOutlet weak var XorButton: UIButton!
    @IBOutlet weak var AdditionButton: UIButton!
    
    @IBOutlet weak var IntZeroButton: UIButton!
    @IBOutlet weak var NegationButton: UIButton!
    @IBOutlet weak var NotButton: UIButton!
    @IBOutlet weak var SolveButton: UIButton!
    
    let highlightedButtonColor: UIColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    let regularButtonColor: UIColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    let operatorButtonColor: UIColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
    let disabledButtonColor: UIColor = #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)
    let whiteColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    
    var firstOperand: String!
    var secondOperand: String!
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
        DecBaseButton.backgroundColor = highlightedButtonColor
        DecBaseButton.isSelected = true
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
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "1")
    }
    
    @IBAction func intTwoPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "2")
    }
    
    @IBAction func intThreePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "3")
    }
    
    @IBAction func intFourPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "4")
    }
    
    @IBAction func intFivePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "5")
    }
    
    @IBAction func intSixPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "6")
    }
    
    @IBAction func intSevenPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "7")
    }
    
    @IBAction func intEightPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "8")
    }
    
    @IBAction func intNinePressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "9")
    }
    
    @IBAction func hexAPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "A")
    }
    
    @IBAction func hexBPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "B")
    }
    
    @IBAction func hexCPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "C")
    }
    
    @IBAction func hexDPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "D")
    }
    
    @IBAction func hexEPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "E")
    }
    
    @IBAction func hexFPressAction(_ sender: Any) {
        let number = CalculatorNumber()
        number.wasPressed(calcDisplay: calculationDisplay, operationPerformed: operationPerformed, input: "F")
    }
    
    @IBAction func hexBasePressAction(_ sender: Any) {
        let baseControl = CalculatorBase()
        switch base {
        case .DECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .HEXADECIMAL, from: .DECIMAL)
            buttonSwitch(fromButton: DecBaseButton, toButton: HexBButton)
        case .OCTAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .HEXADECIMAL, from: .OCTAL)
            buttonSwitch(fromButton: OctBaseButton, toButton: HexBButton)
        case .BINARY:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .HEXADECIMAL, from: .BINARY)
            buttonSwitch(fromButton: BinBaseButton, toButton: HexBButton)
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
            buttonSwitch(fromButton: HexBaseButton, toButton: DecBaseButton)
        case .OCTAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .DECIMAL, from: .OCTAL)
            buttonSwitch(fromButton: OctBaseButton, toButton: DecBaseButton)
        case .BINARY:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .DECIMAL, from: .BINARY)
            buttonSwitch(fromButton: BinBaseButton, toButton: DecBaseButton)
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
            buttonSwitch(fromButton: HexBaseButton, toButton: OctBaseButton)
        case .DECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .OCTAL, from: .DECIMAL)
            buttonSwitch(fromButton: DecBaseButton, toButton: OctBaseButton)
        case .BINARY:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .OCTAL, from: .BINARY)
            buttonSwitch(fromButton: BinBaseButton, toButton: OctBaseButton)
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
            buttonSwitch(fromButton: HexBaseButton, toButton: BinBaseButton)
        case .DECIMAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .BINARY, from: .DECIMAL)
            buttonSwitch(fromButton: DecBaseButton, toButton: BinBaseButton)
        case .OCTAL:
            firstOperand = baseControl.wasPressed(calcDisplay: calculationDisplay, operand: firstOperand, to: .BINARY, from: .OCTAL)
            buttonSwitch(fromButton: OctBaseButton, toButton: BinBaseButton)
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
    
    /**
     # setTitleColors()
     Called by **viewDidLoad()** to initialize UIButton titles based on their button states.
     */
    func setTitleColors() {
        HexBaseButton.setTitleColor(whiteColor, for: .selected)
        DecBaseButton.setTitleColor(whiteColor, for: .selected)
        BinBaseButton.setTitleColor(whiteColor, for: .selected)
        OctBaseButton.setTitleColor(whiteColor, for: .selected)
        
        IntTwoButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntThreeButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntFourButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntFiveButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntSixButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntSevenButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntEightButton.setTitleColor(disabledButtonColor, for: .disabled)
        IntNineButton.setTitleColor(disabledButtonColor, for: .disabled)
        HexAButton.setTitleColor(disabledButtonColor, for: .disabled)
        HexBButton.setTitleColor(disabledButtonColor, for: .disabled)
        HexCButton.setTitleColor(disabledButtonColor, for: .disabled)
        HexDButton.setTitleColor(disabledButtonColor, for: .disabled)
        HexEButton.setTitleColor(disabledButtonColor, for: .disabled)
        HexFButton.setTitleColor(disabledButtonColor, for: .disabled)
    }
    
    /**
     # enableButtonActions()
     Reinitializes the enable state of all buttons
     */
    func enableButtonActions() {
        IntTwoButton.isEnabled = true
        IntThreeButton.isEnabled = true
        IntFourButton.isEnabled = true
        IntFiveButton.isEnabled = true
        IntSixButton.isEnabled = true
        IntSevenButton.isEnabled = true
        IntEightButton.isEnabled = true
        IntNineButton.isEnabled = true
        HexAButton.isEnabled = true
        HexBButton.isEnabled = true
        HexCButton.isEnabled = true
        HexDButton.isEnabled = true
        HexEButton.isEnabled = true
        HexFButton.isEnabled = true
    }
    
    /**
     # disableDecimalButtonActions()
     Disables buttons not applicable to numbers in base 10
     */
    func disableDecimalButtonActions() {
        enableButtonActions()
        HexAButton.isEnabled = false
        HexBButton.isEnabled = false
        HexCButton.isEnabled = false
        HexDButton.isEnabled = false
        HexEButton.isEnabled = false
        HexFButton.isEnabled = false
    }
    
    func disableBinaryButtonActions() {
        
    }
    
    func disableOctalButtonActions() {
        
    }
    
    func disableButtonHighlights() {
        
    }
    
    func buttonSwitch(fromButton: UIButton, toButton: UIButton) {
        fromButton.backgroundColor = regularButtonColor
        fromButton.isSelected = false
        toButton.backgroundColor = highlightedButtonColor
        toButton.isSelected = true
    }
}

enum Operation {
    case addition
    case subtraction
    case division
    case multiplication
    case modulo
    case and
    case or
    case xor
}

enum Base {
    case DECIMAL
    case BINARY
    case HEXADECIMAL
    case OCTAL
}

