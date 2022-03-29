import UIKit

print("😀", terminator: "")
for i in 1...5 {
    for j in 1...5 {
        if i >= j {
            print("😀", terminator: "")
        }
    }
    print()
}


print("😀", terminator: "")
for i in 1...5 {
    for j in 1...5 {
        if i <= j {
            print("😀", terminator: "")
        }
    }
    print()
}
