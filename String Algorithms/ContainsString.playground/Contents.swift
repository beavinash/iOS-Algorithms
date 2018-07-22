import UIKit

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return (self.uppercased().range(of: string.uppercased()) != nil)
    }
    
    func fuzzyContains1(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

"Hello, World!".fuzzyContains("hello")
"Hey, there!".fuzzyContains("Heyn")

"Hello, World!".fuzzyContains1("Hello")
"Hey, there!".fuzzyContains1("heyn")

