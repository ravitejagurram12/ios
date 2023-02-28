//
//  ViewController.swift
//  DiscountApp
//
//  Created by Kattamuri,Vyshnavi on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var amountOL: UITextField!
    
    
    
    @IBOutlet weak var discrateOL: UITextField!
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcDiscount(_ sender: UIButton) {
        
        //Reading the input from amount text field
        var amount = Double(amountOL.text!)
        
        
        //Reading the input from discount rate text field
        var discount = Double(discrateOL.text!)
        
        var priceAfterDiscount = amount! - (amount! * (discount!/100))
        
        displayLabel.text = " Price after discount : $\(priceAfterDiscount)"
        
        
        
    }
    

}

