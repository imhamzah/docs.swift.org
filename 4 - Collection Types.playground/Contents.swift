

// A lesson defining collection types in swift


import Foundation


//  Swift provides three primary collection types, known as arrays, sets, and dictionaries.

//      Arrays are ordered collections of values with repeating behaviour.
//      Sets are unordered collections of unique values.
//      Dictionaries are unordered collections of key-value pair associations.

//-------------------------------------------------- ARRAYS --------------------------------------------------

//repeating behaviour of arrays.
var threeDoubles = Array(repeating: 0.0, count: 3)

//  Difference in appending & += operator

//  appending does append single value of same type in array.
//  += does append single/multiple value of same type in array.

var someIntsArray = [Int]()
var shoppingList: [String] = ["Eggs", "Milk"]

someIntsArray.append(1)
shoppingList += ["Chocolate", "Cheese", "Butter"]


//-------------------------------------------------- SETS --------------------------------------------------

//  A set stores distinct values of the same data type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once

var letters = Set<Character>()
letters.insert("a")

var favoriteGenres_1: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres_2: Set = ["Rock", "Classical", "Hip hop"]

favoriteGenres_1.insert("Jazz") // Insert randomly at any Index.

for genre in favoriteGenres_1.sorted() {
    print("\(genre)")
}


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


//-------------------------------------------------- DICTIONARY --------------------------------------------------

//  A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary don’t have a specified order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a real-world dictionary is used to look up the definition for a particular word.

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"





