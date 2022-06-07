//
//  MovieDetailViewController.swift
//  MovieTableView
//
//  Created by Hamin Jeong on 2022/06/06.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieDetailImageView: UIImageView!
    @IBOutlet weak var movieDetailTitleLabel: UILabel!
    @IBOutlet weak var movieDetailDescriptionLabel: UILabel!
    
    var movieDetailData: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        
    }
    
    func config(){
        movieDetailImageView.image = movieDetailData?.moviePoster
        movieDetailTitleLabel.text = movieDetailData?.movieTitle
        movieDetailDescriptionLabel.text = movieDetailData?.movieDescription
    }
    

}
