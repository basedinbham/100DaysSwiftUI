import UIKit

let celsius = 24.0
let celsiusToFahrenheit = celsius * 9 / 5 + 32

print(celsius)
print(celsiusToFahrenheit)

print("\(celsius) celcius is \(celsiusToFahrenheit) farhrenheit")

let convertedBack = ((celsiusToFahrenheit - 32) * 5) / 9
