import UIKit

class Book {
    var name: String
    var price: Int
    var company: String
    var author: String
    var pages: Int
    
    init(name: String, price: Int, company: String, author: String, pages: Int) {
        self.name = name
        self.price = price
        self.company = company
        self.author = author
        self.pages = pages
    }
}


var book1 = Book(name: "셜록홈즈", price: 20000, company: "길벗", author: "정하민", pages: 350)
var book2 = Book(name: "스위프트", price: 30000, company: "애플", author: "잡스", pages: 500)
book2.company = "Apple"
book2.company


class Member {
    var name: String
    var sex: String
    var age: Int
    var adress: String
    
    init(name: String, sex: String, age: Int, adress: String){
        self.name = name
        self.sex = sex
        self.age = age
        self.adress = adress
    }
}

var member1 = Member(name: "정하민", sex: "남", age: 22, adress: "미국 워싱턴")
member1.adress



class Movie {
    var name: String
    var genre: String
    var mainactor: String
    var director: String
    var day: String
    
    init(name: String, genre:String, mainactor:String, director:String, day:String){
        self.name = name
        self.genre = genre
        self.mainactor = mainactor
        self.director = director
        self.day = day
    }
}

var movie1 = Movie(name: "정하민은 좀 천재인듯", genre: "호러", mainactor: "정하민", director: "민하정", day: "2022.03.06")
movie1.director








class Weather {
    var status: String
    var temperature: Int
    var dust: String
    var date: String
    
    init(status: String, temperature: Int, dust: String, date: String){
        self.status = status
        self.temperature = temperature
        self.dust = dust
        self.date = date
    }
}

var weather1 = Weather(status: "맑음", temperature: 15, dust: "좋음", date: "2022.03.06")
weather1.dust
