//
//  ViewController.swift
//  TableView
//
//  Created by Gurram,Sai Venkata Raviteja on 4/13/23.
//

import UIKit
class Product{
    var prodName : String?
    var prodCategory : String?
    
    
    init(prodName: String, prodCategory : String) {
        self.prodName = prodName
        self.prodCategory = prodCategory
        
    }
    
}



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a cell
        var myCell = TableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // populate a cell
        
        myCell.textLabel?.text = products[indexPath.row].prodName
        // return a cell
        return myCell
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
    var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        TableViewOutlet.delegate = self;
        TableViewOutlet.dataSource = self;
        
        let p1 = Product(prodName: "MacBookAir", prodCategory: "laptop")
        products.append(p1)
        let p2 = Product(prodName: "iphone", prodCategory: "phone")
        products.append(p2)
        let p3 = Product(prodName: "Airpods", prodCategory: "Accessories")
        products.append(p3)
        let p4 = Product(prodName: "iphonese", prodCategory: "miniphone")
        products.append(p4)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.product = products[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

