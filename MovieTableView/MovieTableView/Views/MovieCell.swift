//
//  MovieCell.swift
//  MovieTableView
//
//  Created by Hamin Jeong on 2022/06/06.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var mainMovieImageView: UIImageView!
    @IBOutlet weak var mainMovieTitleLabel: UILabel!
    @IBOutlet weak var mainMovieDescriptionLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
