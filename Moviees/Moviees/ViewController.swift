//
//  ViewController.swift
//  Moviees
//
//  Created by Gurram,Sai Venkata Raviteja on 4/20/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movieCell = CollectionViewOL.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as!
        MovieCollectionViewCell
        
        
        movieCell.assignMovies(movie:
                                movies[indexPath.row])
        return movieCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text = "Title\(movies[indexPath.row].title)"
        yearReleasedOL.text = "year Released\(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Rating\(movies[indexPath.row].movieRating)"
        boxOfficeOL.text = "Box Office\(movies[indexPath.row].boxOffice)"
        
    }
    
    @IBOutlet weak var CollectionViewOL: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
        CollectionViewOL.delegate = self;
        CollectionViewOL.dataSource = self;
    }

    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    
    @IBOutlet weak var ratingOL: UILabel!
    
  
    @IBOutlet weak var boxOfficeOL: UILabel!
    
}

