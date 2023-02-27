//
//  ViewController.swift
//  hero
//
//  Created by Gurram,Sai Venkata Raviteja on 2/27/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var tex: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func click(_ sender: UIButton) {
        
        var msg = Int(tex.text!)
        if(msg! <= 3)
        {
            img.image = UIImage(named: "hit1")
            
        }
        else if(msg! < 7)
        {
            img.image = UIImage(named: "hit2")
        
    }
        
        else
        {
            img.image = UIImage(named: "hit3")
        
    }
    
}

}
