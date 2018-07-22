import UIKit

func twoStringCompares(string1: String, string2: String) -> Bool {
    return Set(string1) == Set(string2)
}

func twoStringCompares1(string1: String, string2: String) -> Bool {
    var checkString = string2
    for letter in string1 {
        if let index = checkString.index(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.count == 0
}

func twoStringCompares2(string1: String, string2: String) -> Bool {
    let array1 = Array(string1)
    let array2 = Array(string2)
    
    // return array1.sorted() == array2.sorted() && array1.count() == array2.count()
    return array1.sorted() == array2.sorted()
}

twoStringCompares(string1: "Avinash", string2: "shaAvin")
twoStringCompares(string1: "avinash", string2: "Avi")

twoStringCompares1(string1: "Avinash", string2: "shaAvin")
twoStringCompares1(string1: "avinash", string2: "Avi")

twoStringCompares2(string1: "Avinash", string2: "shaAvin")
twoStringCompares2(string1: "avinash", string2: "Avi")
