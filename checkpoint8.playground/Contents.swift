import Cocoa

protocol Building {
    var type: String { get }
    var rooms: Int { get }
    var cost: Int { get set }
    var agent: String { get set }
    
    func printSales()
}

extension Building {
    func printSales() {
        print("Speak with \(agent) to purchase this \(type) for $\(cost)")
    }
}

struct House: Building {
    let type = "house"
    var rooms: Int
    var cost: Int
    var agent: String
    
    func printSales() {
        print("Speak with \(agent) to purchase this house for $\(cost)")
    }
}

struct Office: Building {
    let type = "office"
    var rooms: Int
    var cost: Int
    var agent: String
    
    // printSales func not needed for House or Office since it is extended to all Building type
}

let home = House(rooms: 4, cost: 650_000, agent: "Yon Yohnson")
home.printSales()

let office = Office(rooms: 40, cost: 7_500_000, agent: "Yohn Yohnson Jr.")
office.printSales()
