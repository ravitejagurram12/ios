//
//  ResultViewController.swift
//  TableView
//
//  Created by Gurram,Sai Venkata Raviteja on 4/13/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var DescriptionLabel: UILabel!
    var product : Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DescriptionLabel.text = "The product \((product?.prodName)!) is of \((product?.prodCategory)!) category"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
