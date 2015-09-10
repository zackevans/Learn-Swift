//: # Types

import UIKit
import Foundation

//: ### Example 1: Bool, Int, Float, Double
class LightSwitch {
    
    var on: Bool = true
}

var livingRoomSwitch = LightSwitch()
livingRoomSwitch.on
//: ### Example 2: Strings and Characters
var dollarSign: Character = "$"
var myFirstSwiftString: String = "mo' money"
var mySecondSwiftString: String = "mo' problems"
var concatenatedString:String = myFirstSwiftString + ", " + mySecondSwiftString
concatenatedString.dynamicType // lean what the infered type the compiler assigns
//: ### Stay tuned for more on Optionals and Tuples in the upcoming lessons!

//: # Operators

//: ### Example 1 - Comparison operators
let ticketPrice = 7.5
let allowance = 10.0
var iceCreamPrice = 3.0

var pic = UIImage(named:"Chloe.png")!

if allowance >= ticketPrice + iceCreamPrice {
    println("Let's go to the movies!")
} else {
    println("Let's watch a movie at home and eat ice cream")
}
//: ### Example 2 Logical operators
var hungry = true
var vegetarian = false

if hungry {
    println("Let's eat!")
} else {
    println("Let's wait.")
}

if hungry && !vegetarian {
    println("Let's eat steak!")
} else if hungry && vegetarian {
    println("How about pumpkin curry?")
} else {
    println("nevermind")
}

var thereIsPie = true
if hungry || thereIsPie {
    println("Let's eat!")
} else {
    println("Let's wait.")
}

//: ### Example 3 - Ternary conditional
//: A theoretical example from Apple's Swift Programming Language. These two statements are equivalent:
/*:
if question {
answer1
} else {
answer2
}
*/
/*:
question ? answer1 : answer2
*/
// This statement ...
//if hungry {
//    println("Let's eat!")
//} else {
//    println("Let's wait.")
//}

// Could be rewritten like so ...
hungry ? println("Let's eat!") : println("Let's wait.")

// This statement...
//if hungry || thereIsPie {
//    println("Let's eat!")
//} else {
//    println("Let's wait.")
//}

// Could be rewritten like so ...
hungry || thereIsPie ? println("Let's eat!") : println("Let's wait.")


// Ternary statements can also be used as expressions.
let sandwichPrice = 5.0
var tax = true
var lunchPrice = sandwichPrice + (tax ? 0.50 : 0)

//: ### Extra Example - Comparison operators
let birthYear = 1984
if birthYear <= 1989 {
    println("I will understand Gabrielle's 90s references.")
}
else {
    println("I think that Salt n' Peppa are essential seasonings.")
}


