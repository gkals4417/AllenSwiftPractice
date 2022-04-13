import UIKit

//1~500 짝수 숫자 더하기

var sum = 0
var num = 0

for i in 1...100 {
    if i % 2 != 0 {
        continue
    }
    sum = sum + i
}
print(sum)

//1~500 홀수 숫자 더하기
for i in 1...100 {
    if i % 2 == 0{
        continue
    }
    num = num + i
}

print(num)
