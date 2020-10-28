//
//  ViewController.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/26/20.
//

import UIKit

class ViewController: UIViewController {

    let highlightedButtonColor: UIColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    let regularButtonColor: UIColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    let operatorButtonColor: UIColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
    let disabledButtonColor: UIColor = #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)
    let whiteColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    
    var firstOperand: String!
    var secondOperand: String!
    var base: Base!
    var operationPerformed: Bool! = false
    
    // Initialize Interface Builder outlets
    @IBOutlet weak var calculationDisplay: UILabel!
    
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
    
    var style: UIStatusBarStyle = .lightContent
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if self.style == .default {
          //  self.style = .lightContent
        }
        return self.style
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeStyle(_sender: UIButton) {
        if self.style == .lightContent {
            self.style = .default
        } else {
            self.style = .lightContent
        }
        setNeedsStatusBarAppearanceUpdate()
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

