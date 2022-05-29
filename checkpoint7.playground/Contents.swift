import UIKit

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        assertionFailure("This should never be called.")
    }
}

class Dog: Animal {
    override func speak() {
        print("Bark")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Meow")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Ruff")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Oooowww")
    }
}

class Persian: Cat {
    override func speak() {
        print("Maw")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar")
    }
}

let fido = Dog(legs: 4)
fido.speak()

let longboy = Corgi(legs: 4)
longboy.speak()

let fluffy = Poodle(legs: 3)
fluffy.speak()

let onion = Cat(isTame: true, legs: 4)
onion.speak()

let ash = Persian(isTame: false, legs: 4)
ash.speak()

let simba = Lion(isTame: false, legs: 4)
simba.speak()
