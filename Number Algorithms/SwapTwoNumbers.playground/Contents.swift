import UIKit

func swapTwoNumbers(input1: Int, input2: Int) -> (a: Int, b: Int){
    var a = input1
    var b = input2
    (a,b) = (b, a)
    return (a, b)
}

swapTwoNumbers(input1: 1, input2: 2)

