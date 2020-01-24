//
//  ViewController.swift
//  Tipper
//
//  Created by CHRISTOPHER EUBANK on 1/23/20.
//  Copyright © 2020 CHRISTOPHER EUBANK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func CalculateTip(_ sender: Any) {
        //Get bill amount
        let bill = Double(billLabel.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentage = [0.15,0.20,0.25]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Get total and display it
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

