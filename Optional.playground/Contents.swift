import UIKit

var number: Int? = 7
var hello: String? = "안녕하세요"
var name: String? = "홍길동"
var newNum: Double? = 5.5

print(number)
print(hello)
print(name)
print(newNum)


if let n = number {
    print(n)
}

if let hi = hello {
    print(hi)
}

if let n = name {
    print(n)
}

if let nN = newNum {
    print(nN)
}


func doPrintInt(num: Int?){
    guard let n = num else {return}
    print(n)
}

func doPrintString(str: String?){
    guard let s = str else {return}
    print(s)
}

func doPrintDouble(dou: Double?){
    guard let d = dou else {return}
    print(d)
}

doPrintInt(num: number)
doPrintString(str: hello)
doPrintString(str: name)
doPrintDouble(dou: newNum)
