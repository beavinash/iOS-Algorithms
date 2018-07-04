import UIKit

func fizzBuzz() {
    for count in 1 ... 100 {
        if count % 3 == 0 && count % 5 == 0 {
            print("Fizz Buzz")
        } else if count % 3 == 0 {
            print("Fizz")
        } else if count % 5 == 0 {
            print("Buzz")
        } else {
            print(count)
        }
    }
}

fizzBuzz()

func fizzBuzz1() {
    for count in 1 ... 100 {
        if count % 3 == 0 {
            if count % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if count % 5 == 0 {
            print("Buzz")
        } else {
            print(count)
        }
    }
}

fizzBuzz1()
