//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1. struct vs class
// a. struct is value type, class is reference type
struct Tutorial {
    var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1
tutorial2.difficulty = 2
tutorial2.difficulty
tutorial1.difficulty


class Tuto {
    var diff = 1
}

var tuto1 = Tuto()
var tuto2 = tuto1
tuto2.diff = 2
tuto1.diff

// b. uiview is a class reference semantics,  you can mutate the properites of it

var view1 = UIView()
view1.alpha = 0.5

let view2 = UIView()
view2.alpha = 0.5
//////////////////////////////////////////////////////////////////////////////////////////

// closure
let animals = ["fish", "cat", "chicken", "dog"]
let sortedAnimals = animals.sorted { (one, two) -> Bool in return one < two }
animals.sorted(by: {one , two in one < two})
animals.sorted {$0 < $1}

//String has a comparison function
//func <(lhs: String, rhs: String)> -> Bool

animals[0] < animals[2]

animals.sorted(by: <)


// .None VS nil
var optional1: String? = nil
var optional2: String? = .none

nil == .none
//mutating and private

public struct ThermometerStruct {
    private(set) var temperature: Double = 0.0
    public mutating func registerTemperature(_ temperature: Double){  //mutating function means this function is gonna change inner state

        self.temperature = temperature
    }
}

var thermometerStruct = ThermometerStruct()//can not be let
thermometerStruct.registerTemperature(56.0)
thermometerStruct.temperature

var t: ThermometerStruct = ThermometerStruct(temperature: 56.0)

//capture value in closure

var thing = "cars"
let closure = { [thing] in // there is capture, create a COPY of "thing"
    print("\(thing)")
}

let closure2 = {       //no capture, create a reference of value of "thing"
    print("\(thing)")
}
thing = "aaaaa"
let m = closure()
let n = closure2()

n

// Generic types can be extended with conditions by enforcing type constraints

func countUniques<T: Comparable>(array: Array<T>) -> Int {
    let sorted = array.sorted(by: <)
    let initial: (T?, Int) = (.none, 0)
    let reduced = sorted.reduce(initial){($1, $0.0 == $1 ? $0.1 : $0.1 + 1)}
    return reduced.1
}

countUniques(array: [1,2,3,3])


extension Array where Element: Comparable {
    func countUniques() -> Int{
        let sorted = self.sorted(by: <)
        let initial: (Element?, Int) = (.none, 0)
        let reduced = sorted.reduce(initial){($1, $0.0 == $1 ? $0.1 : $0.1 + 1)}
        return reduced.1
    }
}


// swift 3 or later, let .... where => let ..., ....

func divide(dividend:Double?, by divisor: Double?) -> Double? {
    guard let dividend = dividend, let divisor = divisor, divisor != 0 else {
        return nil
    }
    return dividend / divisor
    
}


//Convertible:  enable a type to be initialized with literal values by using the assignment operator

public struct Thermometer {
    public var temperature: Double
    public init(temperature: Double) {
        self.temperature = temperature
    }
}

//var thermometer : Thermometer = 56.8  //can not convert double to Thermometer

extension Thermometer : ExpressibleByFloatLiteral{
    public init(floatLiteral value: FloatLiteralType) {
        self.init(temperature: value)
    }
}




















