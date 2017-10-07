//
//  ViewController.swift
//  Calculator
//
//  Created by IKRAMUZZAMAN MUNTASIR on 8/15/17.
//  Copyright © 2017 IKRAMUZZAMAN MUNTASIR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }else {
            
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue: Double {
        
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
        
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        print("Hello World")
        userIsInTheMiddleOfTyping = false
        if let mathemeticalSymbol = sender.currentTitle {
            
            switch mathemeticalSymbol {
                
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
    

}

