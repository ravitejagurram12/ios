//
//  MovieCollectionViewCell.swift
//  Moviees
//
//  Created by Gurram,Sai Venkata Raviteja on 4/20/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    func assignMovies(movie: Movie){
        imageViewOL.image = movie.image
    }
}
