//
//  ViewController.swift
//  Gurram_Assignment01
//
//  Created by Gurram,Sai Venkata Raviteja on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UITextField!
    
    
    @IBOutlet weak var InitialsLabel: UITextField!
    
    
    
    @IBOutlet weak var ageLabel: UITextField!
    
    
    @IBOutlet weak var firstNameOutlet: UILabel!
    
    
    @IBOutlet weak var lastNameOutlet: UILabel!
    
    @IBOutlet weak var yearOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBTN(_ sender: UIButton) {
        var firstNameOutlet = fullNameLabel.text!
        var lastNumberOutlet = InitialsLabel.text!
        
        print("\(lastNumberOutlet) \(firstNameOutlet)")
      
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
    }
}

