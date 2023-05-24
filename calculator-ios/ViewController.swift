//
//  ViewController.swift
//  calculator-ios
//
//  Created by Kağan Değirmen on 22.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var firstVariable : String = ""
    var secondVariable : String = ""
    var operand: String = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        //if its numeric set as variables else set as operand
        if (Double(sender.currentTitle!) != nil){ // if currentTitle is numeric
            if !(Double(sender.currentTitle!)! == 0.0 && firstVariable.isEmpty){ // currentTitle is 0, then avoid typing unlimited 0's
                if (operand.isEmpty){
                    firstVariable.append(sender.currentTitle!)
                    resultLabel.text = firstVariable
                }else{
                    secondVariable.append(sender.currentTitle!)
                    resultLabel.text = secondVariable
                }
            }
        }else{
            switch (sender.currentTitle!){
            case "AC":
                allClearClicked()
            case "+/-":
                arithmeticSignClicked()
            case ".":
                dotClicked()
            case "=":
                equalsClicked()
            default:
                if !firstVariable.isEmpty{ // to prevent calc without firstVar
                    operand = sender.currentTitle!
                }
            }
        }
    }
    /*@IBAction func modButtonClicked(_ sender: UIButton) {
        operand = "modulus:by:"
    }*/
    func arithmeticSignClicked() {
        if (operand.isEmpty){
            if(firstVariable.contains("-")){
                firstVariable.removeFirst()
            }else{
                firstVariable.insert("-", at: firstVariable.startIndex)
            }
            resultLabel.text = firstVariable
        }else{
            if(secondVariable.contains("-")){
                secondVariable.removeFirst()
            }else{
                secondVariable.insert("-", at: secondVariable.startIndex)
            }
            resultLabel.text = secondVariable
        }
    }
     func allClearClicked() {
        firstVariable = ""
        secondVariable = ""
        resultLabel.text = "0"
        operand = ""
    }
    func equalsClicked() {
        if (!operand.isEmpty){
            //NS Expression mult, divid operand fixes
            operand = (operand == "x") ? "*" : ((operand == "÷") ? "/" : operand)
            let tmpResult = firstVariable + " " + operand + " " + (secondVariable != "" ? secondVariable : firstVariable)
            let exp = NSExpression(format: tmpResult)
            resultLabel.text = "\(exp.expressionValue(with: nil, context: nil) ?? "0")"
            firstVariable = resultLabel.text ?? ""
            secondVariable = ""
            operand = ""
        }
    }
    func dotClicked() {
        if (operand.isEmpty){
            if (!firstVariable.isEmpty){
                if(!firstVariable.contains(".")){
                    firstVariable.append(".")
                    resultLabel.text = firstVariable
                }
            }
        }else{
            if (!secondVariable.isEmpty){
                if(!secondVariable.contains(".")){
                    secondVariable.append(".")
                    resultLabel.text = secondVariable
                }
            }
        }
    }
}
