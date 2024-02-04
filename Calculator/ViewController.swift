//
//  ViewController.swift
//  Calculator
//
//  Created by Yusuf Bayindir on 1/23/24.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var acButton: UIButton!
    var equation :String = ""
    var isAfterEqual = false

    @IBAction func acButton(_ sender: UIButton) {
        acButton.setTitle("AC", for: .normal)
        result.text = "0"
        equation = ""
    }
    func doC(){
        acButton.setTitle("C", for: .normal)
    }
    @IBAction func negativePositive(_ sender: UIButton) {
        if let text = result.text, text.first == "-" {
            let a = String(text.dropFirst())
            result.text = a
        }else{
            result.text = "-" + (result.text ?? "0")
        }
    }
    
    @IBAction func percent(_ sender: UIButton) {
        equation = equation + result.text!
        
        result.text = "\(Float(result.text!)!/100)" // Output: 17
        equation = ""
        
        isAfterEqual = true
    }
    
    @IBAction func divide(_ sender: UIButton) {
        equation = equation + result.text! + "/"
        result.text = "0"
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        equation = equation + result.text! + "*"
        result.text = "0"
    }
    
    @IBAction func substruction(_ sender: UIButton) {
        equation = equation + result.text! + "-"
        result.text = "0"
    }
    
    @IBAction func addition(_ sender: UIButton) {
        equation = equation + result.text! + "+"
        result.text = "0"
    }
    
    @IBAction func equals(_ sender: UIButton) {
        equation = equation + result.text!
        let expression = NSExpression(format: equation)
        if let final = expression.expressionValue(with: nil, context: nil) as? NSNumber {
            result.text = "\(final)"
            equation = ""
        }
        isAfterEqual = true
    }
    
    @IBAction func comma(_ sender: UIButton) {
        if let text = result.text, text.contains(".") {
        }else{
            result.text = result.text! + "."
        }
        isAfterEqual = false
    }
    
    @IBAction func zero(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "0"
        }else{
            result.text = result.text! + "0"
        }
        isAfterEqual = false
    }
    
    @IBAction func one(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "1"
        }else{
            result.text = result.text! + "1"
        }
        isAfterEqual = false
    }
    
    @IBAction func two(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "2"
        }else{
            result.text = result.text! + "2"
        }
        isAfterEqual = false
    }
    
    @IBAction func three(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "3"
        }else{
            result.text = result.text! + "3"
        }
        isAfterEqual = false
    }
    
    @IBAction func four(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "4"
        }else{
            result.text = result.text! + "4"
        }
        isAfterEqual = false
    }
    
    @IBAction func five(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "5"
        }else{
            result.text = result.text! + "5"
        }
        isAfterEqual = false
    }
    
    @IBAction func six(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "6"
        }else{
            result.text = result.text! + "6"
        }
        isAfterEqual = false
    }
    
    @IBAction func seven(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "7"
        }else{
            result.text = result.text! + "7"
        }
        isAfterEqual = false
    }
    
    @IBAction func eight(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "8"
        }else{
            result.text = result.text! + "8"
        }
        isAfterEqual = false
    }
    
    @IBAction func nine(_ sender: UIButton) {
        doC()
        if result.text == "0" || isAfterEqual == true {
            result.text = "9"
        }else{
            result.text = result.text! + "9"
        }
        isAfterEqual = false
    }
    
}

