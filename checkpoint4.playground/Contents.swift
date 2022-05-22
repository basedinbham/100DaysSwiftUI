import UIKit

enum squareError: Error {
    case outOfRange
    case noRoot
}

func findSquare(for number: Int) throws -> Int{
    if number > 10_000 || number < 1 {
        throw squareError.outOfRange
    }
    
    for i in 1...100 {
        if (i * i) == number {
            return i
        }
    }
    // If code is ran after loop it means no value was found for i
    throw squareError.noRoot
}

let number = 6561

do {
    let root = try findSquare(for: number)
    print("The square root of \(number) is \(root)")
} catch squareError.outOfRange {
    print("Please choose a number between 1 - 10,000.")
} catch squareError.noRoot {
    print("There is no root for \(number)")
} catch {
    print("There was an error")
}

