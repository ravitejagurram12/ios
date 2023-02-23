//
//  ViewController.swift
//  temperaturee
//
//  Created by Gurram,Sai Venkata Raviteja on 2/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var evtemp: UITextField!
    
    
    @IBOutlet weak var viewIMAGE: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Perform(_ sender: UIButton) {
        var textt = Int(evtemp.text!)
        if (textt! <= 0){
            viewIMAGE.image = UIImage(named: "winter")
            
        }
            
        else if (textt! < 20){
            viewIMAGE.image = UIImage(named: "spring")
        }
        
        else{
            viewIMAGE.image = UIImage(named: "summer")
        }
    }
    
}

