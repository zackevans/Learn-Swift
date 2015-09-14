//: # Lesson 5 Exercises - Defining and Calling Functions

import UIKit

//: __Problem 1.__
//:
//:The global function first() returns the first member of a collection. Check out [Nate Cook's blog post on Swift Collection Protocols](http://nshipster.com/swift-collection-protocols) See if you can find a function that returns the last member of a collection.

//:__1a.__ Test out your discovery below by returning the last letter of the String, "bologna".

// Solution
var optionalLetter = last("bologna")

//:__1b.__ If the method you found returns an optional, unwrap the return value.
// Solution
var letter = optionalLetter!

//: __Problem 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the function you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.
var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]

// Solution
func combineLastCharacters([String]) -> String {
    var newWord = ""
    for word in nonsenseArray {
        var lastCharacter = last(word)
        newWord.append(lastCharacter!)
    }
    return newWord
}

combineLastCharacters(nonsenseArray)

//: __Problem 3__
//:
//: The global function dropFirst() returns a collection with its first member removed. Check out this [list of global functions available in the Swift Standard library](http://practicalswift.com/2014/06/14/the-swift-standard-library-list-of-built-in-functions). See if you can find a function  that returns a collection with its last member removed. Test out your discovery in the problem below.

//: Write the function, placeLastLetterFirst. It should remove the last character from a string and place it at the beginning of the string.
// Solution
func placeLastLetterFirst(var word: String) -> String {
    word = "\(last(word)!)" + "\(word)"
    word = dropLast(word)
    return word
}

var newString = placeLastLetterFirst("oars")

//: __Problem 4__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.

//: NSCharacterSet.decimalDigitCharacterSet() is used below to define a set that is only digits. Using that set, write a function that takes in a String and returns true if that string is numeric and false if it contains any characters that are not numbers.

//: __4a.__ Write a signature for a function that takes in a String and returns a Bool

//: __4b.__ Write a for-in loop that checks each character of a string to see if it is a member of the "digits" set. Hint: the method longCharacterIsMember may come in handy.

// Solution
let digits = NSCharacterSet.decimalDigitCharacterSet()
func digitsOnly(word: String) -> Bool {
    for character in word.unicodeScalars {
        if !digits.longCharacterIsMember(character.value) {
            return false
        }
    }
    return true
}

//: __Problem 5__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]

// Solution
func cleanUp(dirtyArray: [String]) -> [String] {
    var cleanArray = [String]()
    for word in dirtyArray {
        if count(word) == 4 {
        } else {
            cleanArray.append(word)
        }
    }
    return cleanArray
}

cleanUp(dirtyWordsArray)

//: __Problem 6__
//:
//: Write a method, filterByDirector, that belongs to the MovieArchive class.  This method should take in a dictionary of movie titles and a string representing the name of a director and return an array of movies created by that director. You can use the movie dictionary below. To test your method, instantiate an instance of the MovieArchive class and call filterByDirector from that instance.

var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    func filterByDirector(currentDirector:String, movies: Dictionary<String, String>) -> [String] {
        var filteredArray = [String]()
        for (movie, director) in movies {
            if director == currentDirector {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
}

// Solution
var myArchive = MovieArchive()
myArchive.filterByDirector("Richard Linklater", movies: movies)
