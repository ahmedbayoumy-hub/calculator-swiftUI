//
//  ViewController.swift
//  Calculator
//
//  Created by Consultant on 12/15/22.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var calculatorWorkings: UILabel!
    
    @IBOutlet weak var calculatorResults: UILabel!
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    var workings: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }
    
    func clearAll () {
        workings = ""
        calculatorResults.text = ""
        calculatorWorkings.text = ""
    }
    
    func addToWorkings (value: String) {
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    func formatResult (result: Double) -> String{
        if (result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        clearAll()
    }
    @IBAction func divideButton(_ sender: UIButton) {
        addToWorkings(value: "/")
    }
    @IBAction func multiplyButton(_ sender: UIButton) {
        addToWorkings(value: "*")
    }
    @IBAction func subtractButton(_ sender: UIButton) {
        addToWorkings(value: "-")
    }
    @IBAction func addButton(_ sender: UIButton) {
        addToWorkings(value: "+")
    }
    @IBAction func equalButton(_ sender: UIButton) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result:result)
        calculatorResults.text = resultString
    }
    
    @IBAction func zero(_ sender: UIButton) {
        addToWorkings(value: "0")
    }
    @IBAction func one(_ sender: UIButton) {
        addToWorkings(value: "1")
    }
    @IBAction func two(_ sender: UIButton) {
        addToWorkings(value: "2")
    }
    @IBAction func three(_ sender: UIButton) {
        addToWorkings(value: "3")
    }
    @IBAction func four(_ sender: UIButton) {
        addToWorkings(value: "4")
    }
    @IBAction func five(_ sender: UIButton) {
        addToWorkings(value: "5")
    }
    @IBAction func six(_ sender: UIButton) {
        addToWorkings(value: "6")
    }
    @IBAction func seven(_ sender: UIButton) {
        addToWorkings(value: "7")
    }
    @IBAction func eight(_ sender: UIButton) {
        addToWorkings(value: "8")
    }
    @IBAction func nine(_ sender: UIButton) {
        addToWorkings(value: "9")
    }
}


