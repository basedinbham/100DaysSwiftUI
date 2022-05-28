import UIKit

struct Car {
    let model: String
    let seats: Int
    let maximumGears: Int
    private(set) var gear: Int = 1
    
    // Private var requires own initializer
    
    init(model: String, seats: Int, maximumGears: Int, gear: Int = 1) {
        self.model = model
        self.seats = seats
        self.maximumGears = maximumGears
        self.gear = gear
    }
    
//    mutating func gearSelect(upshift: Bool, downshift: Bool) {
//        if currentGear == 1 && downshift == true || currentGear == 6 && upshift == true {
//            print("Grinnnnnnnnd")
//            return
//        } else if currentGear < 6 && upshift == true {
//            currentGear += 1
//        } else if currentGear > 1 && downshift == true {
//            currentGear -= 1
//        }
//    }
    
//    mutating func changeGear(difference: Int) {
//        let newGear = currentGear + difference
//
//        if newGear >= 1 && newGear <= maximumGears {
//            currentGear = newGear
//        }
//    }

    
    mutating func changeGear(difference: Int) {
        gear = gear + difference
        
        if gear < 1 {
            gear = 1
        } else if gear > maximumGears {
            gear = maximumGears
        }
    }
}
//var tesla = Car(model: "Model S", seats: 5)

//tesla.gearSelect(upshift: true, downshift: false)
//tesla.currentGear

var bmw = Car(model: "335", seats: 5, maximumGears: 7)

bmw.changeGear(difference: 3)
print(bmw.gear)

bmw.changeGear(difference: -5)
print(bmw.gear)
