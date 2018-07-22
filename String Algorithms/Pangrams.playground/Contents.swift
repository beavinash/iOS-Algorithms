import UIKit

func pangrams(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter {$0 >= "a" && $0 <= "z"}
    return letters.count == 26
}

pangrams(input: "Avinash")
pangrams(input: "The quick brown fox jumps over the lazy dog")
