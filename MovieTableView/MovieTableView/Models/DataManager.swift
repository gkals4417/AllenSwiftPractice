//
//  DataManager.swift
//  MovieTableView
//
//  Created by Hamin Jeong on 2022/06/06.
//

import UIKit


class DataManager {
    
    var movieList: [Movie] = []
    
    func makeMovieList(){
        movieList = [
            Movie(movieTitle: "배트맨", movieDescription: "배트맨이 출연하는 영화", moviePoster: UIImage(named: "batman.png")),
            Movie(movieTitle: "캡틴 아메리카", movieDescription: "캡틴 아메리카의 기원. 캡틴 아메리카는 어떻게 탄생하게 되었을까?", moviePoster: UIImage(named: "captain.png")),
            Movie(movieTitle: "아이언맨", movieDescription: "토니 스타크가 출현. 아이언맨이 탄생하게된 게기가 재미있는 영화", moviePoster: UIImage(named: "ironman.png")),
            Movie(movieTitle: "토르", movieDescription: "아스가르드의 후계자 토르가 지구에 오게되는 스토리", moviePoster: UIImage(named: "thor.png")),
            Movie(movieTitle: "헐크", movieDescription: "브루스 배너 박사의 실험을 통해 헐크가 탄생하게 되는 영화", moviePoster: UIImage(named: "hulk.png")),
            Movie(movieTitle: "스파이더맨", movieDescription: "피터 파커가 학생에서 스파이더맨이 되는 과정을 담은 스토리", moviePoster: UIImage(named: "spiderman.png")),
            Movie(movieTitle: "블랙펜서", movieDescription: "와칸다의 왕위 계승자 티찰과 블랙펜서가 되다.", moviePoster: UIImage(named: "blackpanther.png")),
            Movie(movieTitle: "닥터 스트레인지", movieDescription: "외과의사 닥터 스트레인지가, 히어로가 되는 과정을 담은 영화", moviePoster: UIImage(named: "doctorstrange.png")),
            Movie(movieTitle: "가디언즈 오그 갤럭시", movieDescription: "빌런 타노스에 맞서서 세상을 지키려는 가디언즈 오브 갤럭시 멤버들", moviePoster: UIImage(named: "guardians.png"))
        ]
    }
    
    func getMovieList() -> [Movie]{
        return movieList
    }
    
    func updateMovieList(){
        let additionalMovie = Movie(movieTitle: "스파이더맨2", movieDescription: "스파이더맨 2", moviePoster: UIImage(named: "spiderman2"))
        movieList.append(additionalMovie)
    }
}
