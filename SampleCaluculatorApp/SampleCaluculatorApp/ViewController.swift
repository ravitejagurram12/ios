//
//  ViewController.swift
//  SampleCaluculatorApp
//
//  Created by Kattamuri,Vyshnavi on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayOutlet: UILabel!
    
    
    //Declare and initialize to some default values.
    var operand1:Double = -1.1
    var _operator:Character = " "
    var operand2:Double = -1.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func button5Clicked(_ sender: Any) {
        //assigning 5 to display label
        displayOutlet.text = "5"
        if operand1 == -1.1{
            operand1 = 5
        }
        else{
            operand2 = 5
        }
    }
    
    @IBAction func buttonPlusClicked(_ sender: Any) {
        displayOutlet.text =  "+"
        if _operator == " "{
            _operator = "+"
        }
    }
    
    @IBAction func button3Clicked(_ sender: Any) {
        displayOutlet.text = "3"
        if operand2 == -1.1{
            operand2 = 3
        }
        else{
            operand1 = 3
        }
    }
    
    @IBAction func buttonEqualsClicked(_ sender: Any) {
        displayOutlet.text = "="
        if _operator == "+"{
            displayOutlet.text = displayOutlet.text!+"\(operand1+operand2)"
        }
    }
}

