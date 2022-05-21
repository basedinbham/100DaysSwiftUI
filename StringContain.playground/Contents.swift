import UIKit

// My attempt

func stringContain(stringOne: String, stringTwo: String) -> Bool {
    if stringOne.sorted() == stringTwo.sorted() {
        return true
    } else {
        return false
    }
}

stringContain(stringOne: "abc", stringTwo: "ccb")

// Less efficent code

func areLettersIdentical(stringOne: String, stringTwo: String) -> Bool {
    let first = stringOne.sorted()
    let second = stringTwo.sorted()
    return first == second
}

// More efficent

func areLettersIdentical1(stringOne: String, stringTwo: String) -> Bool {
    return stringOne.sorted() == stringTwo.sorted()
}

// Most efficent - if there is only one line of code we do not need to declare 'return'

func areLettersIdentical2(stringOne: String, stringTwo: String) -> Bool {
    stringOne.sorted() == stringTwo.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

func pythagorasOneLine(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

pythagorasOneLine(a: 3, b: 4)
