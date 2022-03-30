import UIKit

func randomChar (char: String) -> String {
    let ranchar = char.randomElement()!
    
    return String(ranchar)
}

randomChar(char: "하이여")

