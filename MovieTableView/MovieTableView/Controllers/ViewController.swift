//
//  ViewController.swift
//  MovieTableView
//
//  Created by Hamin Jeong on 2022/06/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movieDataManager = DataManager()
    var movieArray: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewConfiguration()
        movieDataConfiguration()
    }

    func tableViewConfiguration(){
        tableView.rowHeight = 120
        tableView.dataSource = self
        tableView.delegate = self
        title = "영화목록"
    }

    func movieDataConfiguration(){
        movieDataManager.makeMovieList()
        movieArray = movieDataManager.getMovieList()
    }
    
    @IBAction func barButtonTapped(_ sender: UIBarButtonItem) {
        movieDataManager.updateMovieList()
        movieArray = movieDataManager.getMovieList()
        tableView.reloadData()
    }
}



extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        cell.selectionStyle = .none
        cell.mainMovieImageView.image = movieArray[indexPath.row].moviePoster
        cell.mainMovieTitleLabel.text = movieArray[indexPath.row].movieTitle
        cell.mainMovieDescriptionLabel.text = movieArray[indexPath.row].movieDescription
        return cell
    }
}



extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailVC", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let detailVC = segue.destination as! MovieDetailViewController
            let array = movieArray
            let indexPath = sender as! IndexPath
            
            detailVC.movieDetailData = array[indexPath.row]
        }
    }
}
