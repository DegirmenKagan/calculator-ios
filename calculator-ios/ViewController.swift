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
    
    @IBAction func modButtonClicked(_ sender: UIButton) {
        operand = "modulus:by:"
    }
    @IBAction func arithmeticSignClicked(_ sender: UIButton) {
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
    @IBAction func allClearClicked(_ sender: UIButton) {
        firstVariable = ""
        secondVariable = ""
        resultLabel.text = "0"
        operand = ""
    }
    @IBAction func divideClicked(_ sender: UIButton) {
        operand = "/"
    }
    @IBAction func multiplicationClicked(_ sender: UIButton) {
        operand = "*"
    }
    @IBAction func minusClicked(_ sender: UIButton) {
        operand = "-"
    }
    @IBAction func plusClicked(_ sender: UIButton) {
        operand = "+"
    }
    @IBAction func equalsClicked(_ sender: UIButton) {
        if (!operand.isEmpty){
            let tmpResult = firstVariable + " " + operand + " " + (secondVariable != "" ? secondVariable : firstVariable)
            let exp = NSExpression(format: tmpResult)
            resultLabel.text = "\(exp.expressionValue(with: nil, context: nil) ?? "0")"
            firstVariable = resultLabel.text ?? ""
            secondVariable = ""
            operand = ""
        }
    }
    @IBAction func dotClicked(_ sender: UIButton) {
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
    @IBAction func zeroClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            if (!firstVariable.isEmpty){
                firstVariable.append("0")
                resultLabel.text = firstVariable
            }
        }else{
            if (!secondVariable.isEmpty){
                secondVariable.append("0")
                resultLabel.text = secondVariable
            }
        }
    }
    @IBAction func oneClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("1")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("1")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func twoClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("2")
            resultLabel.text = firstVariable
        }
        else{
            secondVariable.append("2")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func threeClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("3")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("3")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func fourClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("4")
            resultLabel.text = firstVariable
        }
        else{
            secondVariable.append("4")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func fiveClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("5")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("5")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func sixClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("6")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("6")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func sevenClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("7")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("7")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func eightClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("8")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("8")
            resultLabel.text = secondVariable
        }
    }
    @IBAction func nineClicked(_ sender: UIButton) {
        if (operand.isEmpty){
            firstVariable.append("9")
            resultLabel.text = firstVariable
        }else{
            secondVariable.append("9")
            resultLabel.text = secondVariable
        }
    }
    


}

