import UIKit

func binaryReverse(number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddingBinary = String(repeating: "0", count: paddingAmount) + binary
    let reversedBinary = String(paddingBinary.reversed())
    return UInt(reversedBinary)!
}

binaryReverse(number: 4)

