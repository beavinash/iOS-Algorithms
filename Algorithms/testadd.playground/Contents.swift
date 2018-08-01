func sum(a: Int, b: Int) -> Int {
    return a + b // range: = [-32,000,000, 32,000,000) [-1 * 2^31, 2^31 + 1]
}

sum(a: 5, b: 5)

func addArrayItem(input: [Int]) -> Int {
    var total = 0
    for number in input {
        total += number
    }
    return total
}

addArrayItem(input: [1,2,3,4,5])
