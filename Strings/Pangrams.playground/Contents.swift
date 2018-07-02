import UIKit

func pangrams(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

pangrams(input: "Sphinx of black quartz, judge my vow")
pangrams(input: "Pack my box with five dozen liquor jugs")
pangrams(input: "No Pack my bot with five dozen liquor jugs")
