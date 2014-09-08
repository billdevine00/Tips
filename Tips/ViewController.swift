//
//  ViewController.swift
//  Tips
//
//  Created by WilliamDevine on 9/6/14.
//  Copyright (c) 2014 WilliamDevine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var eightteenLabel: UILabel!
    @IBOutlet weak var twentyLabel: UILabel!
    @IBOutlet weak var twentytwoLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var withTipLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        withTipLabel.hidden = true
        totalLabel.hidden = true
        withTipLabel.hidden = true
        eightteenLabel.hidden = true
        twentyLabel.hidden = true
        twentytwoLabel.hidden = true
        segmentControl.hidden = true
        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var eighteen = tipPercentages[0] * billAmount
        var twenty = tipPercentages[1] * billAmount
        var twentytwo = tipPercentages[2] * billAmount
        
        withTipLabel.hidden = false
        totalLabel.hidden = false
        withTipLabel.hidden = false
        eightteenLabel.hidden = false
        twentyLabel.hidden = false
        twentytwoLabel.hidden = false
        segmentControl.hidden = false


        
        totalLabel.text = String(format: "$%.2f", total)
        eightteenLabel.text = String(format: "$%.2f", eighteen)
        twentyLabel.text = String(format: "$%.2f", twenty)
        twentytwoLabel.text = String(format: "$%.2f", twentytwo)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

