//
//  ViewController.swift
//  Imagee
//
//  Created by Gurram,Sai Venkata Raviteja on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageol: UIImageView!
    
    
    @IBOutlet weak var labelol: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clickbutton(_ sender: Any) {
        
   
        labelol.text = "Dhoni"
        imageol.image = UIImage(named: "Thala")
    }
    
    
    
}

