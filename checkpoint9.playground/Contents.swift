import Cocoa

func randomIntArray(numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}

let randomNumber = randomIntArray(numbers: [])

func getNumber(in array: [Int?]?) -> Int {
    // lazy var ramdon isn't calculated until it's used on line 12 - only executed if needed (Playground bug present here)
    lazy var random = Int.random(in: 1...100)
    return (array?.randomElement() ?? random)  ?? random
}
