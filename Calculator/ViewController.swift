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
    
    @IBOutlet weak var calculationDisplay: UILabel!
    
    @IBOutlet weak var HexBaseButton: UIButton!
    @IBOutlet weak var DecBaseButton: UIButton!
    @IBOutlet weak var OctBaseButton: UIButton!
    @IBOutlet weak var BinBaseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

