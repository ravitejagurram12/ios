//
//  ViewController.swift
//  Gurram_Assignment01
//
//  Created by Gurram,Sai Venkata Raviteja on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var firstNameOutlet: UITextField!
    
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    
    
    @IBOutlet weak var details: UILabel!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var InitialsLabel: UILabel!
    
    
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBTN(_ sender: UIButton) {
        var lastName = lastNameOutlet.text!
        var firstName = firstNameOutlet.text!
        details.text = "Details"
        fullNameLabel.text = "Full Name : \(lastName) \(firstName)"
        
        var initialLast = lastName.first!
        var initialFirst = firstName.first!
        InitialsLabel.text = "Initials : \(initialLast) \(initialFirst)"
        let yearBirth = yearOutlet.rawValue
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: date)
        let year = components.year!
        
        let age = yearBirth - year
        ageLabel.text = "Age : \(age)"
      
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
    }
}

