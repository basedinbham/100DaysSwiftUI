import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Filter out any even numbers
let result = luckyNumbers.filter { $0.isMultiple(of: 2) == false }

// Sort array in ascending order
let result1 = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted()

// Map them to strings in the format "7 is a lucky number"
let result2 = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted().map { "\($0) is a lucky number." }

// Print resulting array one item per line
for item in result2 {
    print(item)
}
