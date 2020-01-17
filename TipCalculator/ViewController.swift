//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vincent Cai on 1/16/20.
//  Copyright © 2020 Vincent Cai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalTextField: UITextField!
    
    var originalAmount = 0.0
    var tipPercentage = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func updateNumbers(originalAmount: Double, tipPercentage: Double) {
        self.originalAmount = originalAmount
        self.tipPercentage = tipPercentage
        totalTextField.text = String(originalAmount * (1 + tipPercentage))
    }

    @IBAction func updateOriginalAmount(_ sender: UITextField) {
        if let oa = Double(sender.text ?? "") {
            updateNumbers(originalAmount: oa, tipPercentage: tipPercentage)
        } else {
            updateNumbers(originalAmount: 0.0, tipPercentage: tipPercentage)
        }
    }
    
    @IBAction func updateTipPercentage(_ sender: UITextField) {
        if let tp = Double(sender.text ?? "") {
            updateNumbers(originalAmount: originalAmount, tipPercentage: tp / 100)
        } else {
            updateNumbers(originalAmount: originalAmount, tipPercentage: 0.0)
        }
    }
    
}

