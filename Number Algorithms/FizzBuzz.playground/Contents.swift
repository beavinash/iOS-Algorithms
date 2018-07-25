import UIKit

func fizzBuzz(input: Int) {
    for number in 1...input {
        if (number % 3 == 0 && number % 5 == 0) {
            print("FizzBuzz")
        } else if (number % 3 == 0) {
            print("Fizz")
        } else if (number % 5 == 0) {
            print("Buzz")
        } else {
            print(number)
        }
    }
}

func fizzBuzz1(input: Int) {
    for number in 1...input {
        if (number % 3 == 0) {
            if (number % 5 == 0) {
                print("FizzBuzz")
            } else {
                print("Fizz")
            }
        } else if (number % 5 == 0) {
            print("Buzz")
        } else {
            print(number)
        }
    }
}


fizzBuzz(input: 15)
fizzBuzz(input: 1)


fizzBuzz1(input: 15)
fizzBuzz1(input: 1)
