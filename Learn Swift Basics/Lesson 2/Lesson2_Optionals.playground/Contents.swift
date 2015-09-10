//: # All about Optionals!
import UIKit
//: ### Example 1: Nil is disallowed in most Swift types
var x: Int
x = nil // All swift primative types cant store nill

var c: UIColor
c = UIColor.redColor()
c = nil // Objects cant store primative types either 

//: ### Sweet! Except ...
//: 1. A method that cannot return a value
var y: Int
var s1: String
var s2: String

s1 = "123"
s2 = "ABC"

y = s1.toInt()
y = s2.toInt()

//: 2. Properties that cannot be initialized when an object is constructed

class ViewController: UIViewController {
    var button: UIButton
}

//: ### Declaring optionals with Question Marks
// Example 1
var z: Int
var string: String
string = "123"
z = string.toInt()

// Example 2
class AnotherViewController: UIViewController {
    var anotherButton: UIButton
}

//: ### Unwrapping Optionals with if let
//Example 1
var zee: Int?

let strings = ["ABC","123"] // declared a array with a string and a it
let randomIndex = Int(arc4random() % 2) // choose random number 0-1
let anotherString = strings[randomIndex] // assign another string to the index of the random number

zee = anotherString.toInt() // tries to covert string to int

if let intValue = zee {
    println(intValue * 2)
}else {
    "No value"
}

//Example 2
var imageView = UIImageView()
imageView.image = UIImage(named:"puppy_in_box")

if let image = imageView.image {
    let size = image.size
} else {
    println("This image hasn't been set.")
}

imageView.image
//: ### Optional Chaining
// Example 1
var anotherImageView = UIImageView()
anotherImageView.image = UIImage(named:"puppy_in_box")

if let imageSize = imageView.image?.size {
    println("\(imageSize)")
} else {
    println("This image hasn't been set.")
}

// Example 2
var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)
animal = Animal(name: "Gilbert", species: "Gorilla", tailLength: nil )

if let tailLength = animal.tail?.length {
    println("\(animal.name)'s tail is \(tailLength) long")
} else {
    println("\(animal.name) doesn't have a tail.")
}
//: ### Implicitly Unwrapped Optionals
// Example 1
let w =  "123".toInt()
w! * 2

// Example 2
class BetterViewController: UIViewController {
    var myButton: UIButton!
}

