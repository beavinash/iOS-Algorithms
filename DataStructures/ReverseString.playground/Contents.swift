import UIKit

func reverseStringInPlace(input: String) -> String{
    var result: String = ""
    for char in input {
        result = String(char) + result
    }
    return result
}

reverseStringInPlace(input: "This is great!")


func reverse(_ str: String) -> String {
    
    // write the body of your function here
    
    var leftIndex = 0
    var rightIndex = str.count - 1
    
    while leftIndex < rightIndex {
        
        let leftStrIndex = str.index(str.startIndex, offsetBy: leftIndex)
        let rightStrIndex = str.index(str.startIndex, offsetBy: rightIndex)
        
        let leftChar = str[leftStrIndex]
        let rightChar = str[rightStrIndex]
        
        let leftRange = leftStrIndex...leftStrIndex
        let rightRange = rightStrIndex...rightStrIndex
        
        str.replaceSubrange(leftRange, with: String(rightChar))
        str.replaceSubrange(rightRange, with: String(leftChar))
        
        leftIndex += 1
        rightIndex -= 1
    }
}

let testInput = "test input"
print(reverse(testInput))
