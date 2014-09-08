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
    @IBOutlet var CurrencyView: UIView!
    @IBOutlet weak var currencyView: UIView!
    
    @IBOutlet weak var entryView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        totalLabel.text = ""
        withTipLabel.text = ""
        eightteenLabel.text = ""
        twentyLabel.text = ""
        twentytwoLabel.text = ""
        segmentControl.hidden = true

        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        println("editingchange")
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var eighteen = tipPercentages[0] * billAmount
        var twenty = tipPercentages[1] * billAmount
        var twentytwo = tipPercentages[2] * billAmount

        segmentControl.hidden = false
        
        totalLabel.text = String(format: "$%.2f", total)
        eightteenLabel.text = String(format: "$%.2f", eighteen)
        twentyLabel.text = String(format: "$%.2f", twenty)
        twentytwoLabel.text = String(format: "$%.2f", twentytwo)
        withTipLabel.text = ("With Tip")

  /*      self.CurrencyView.alpha = 0
        UIView.animateWithDuration(0.7, animations: {
            // This causes first view to fade in and second view to fade out
            self.CurrencyView.alpha = 1
            }, completion:(true)
        )}
*/
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

