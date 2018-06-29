//: Playground - noun: a place where people can play

import UIKit

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
}

let stringContains = "Hello, World!".fuzzyContains("Hello")


extension String {
    func fuzzyContains2(_ string: String) -> Bool {
        return string.range(of: string, options: .caseInsensitive) != nil
    }
}

let stringContains2 = "Hello, world!".fuzzyContains2("World!")
