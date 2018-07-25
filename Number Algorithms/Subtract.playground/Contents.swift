import UIKit

func subtractNumber(subtract: Int, from: Int) -> Int {
    return from + -subtract
}

func subtractNumber1(subtract: Int, from: Int) -> Int {
    return from + -1 * subtract
}

func subtractNumber2(subtract: Int, from: Int) -> Int {
    return from + (~subtract + 1)
}


subtractNumber2(subtract: 5, from: 2)
