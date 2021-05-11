//: [Previous](@previous)

import Foundation


import Foundation

//Structures and classes in Swift have many things in common. Both can:

//Define properties to store values
//Define methods to provide functionality
//Define subscripts to provide access to their values using subscript syntax
//Define initialisers to set up their initial state
//Be extended to expand their functionality beyond a default implementation
//Conform to protocols to provide standard functionality of a certain kind


//Classes have additional capabilities that structures don’t have:

//Inheritance enables one class to inherit the characteristics of another.
//Type casting enables you to check and interpret the type of a class instance at runtime.
//Deinitialisers enable an instance of a class to free up any resources it has assigned.
//Reference counting allows more than one reference to a class instance.



//---------------------------------------------------------------- Classes -------------------------------------------------------------


class PersonClass{
    // Classes are reference type so they need initialisation
    var name: String
    var age: Int
    
    //classes don't have default initialiser, so we declare manually
    init(personName: String, personAge: Int) {
        self.name = personName
        self.age = personAge
    }
    
    //de-initialiser only calls when reference count of class decreases to 0.
    deinit {
        print("\(type(of: self)) \(#function)")
    }
}


var personOneClass: PersonClass? = PersonClass.init(personName: "Ameer", personAge: 19) // personOneClass is now referring to PersonClass Object, so now PersonClass reference count has been increases from 0 to 1.
var personTwoClass = personOneClass // personTwoClass is now referring to PersonClass Object, so now PersonClass reference count has been increases from 1 to 2.


if personOneClass === personTwoClass{
    print("Both are pointing to the same PersonClass instance.")
} else if personOneClass !== personTwoClass{
    print("Both arn't pointing to the same PersonClass instance.")
}

//personTwoClass?.name = "Hamza"
//print(personOneClass?.name)
//print(personTwoClass?.name)


personOneClass = nil // This will call de-initialiser of class, if we only assign nil to personOneClass = nil, then de-initialiser won't call because personTwoClass is also pointing to same memory block and personTwoClass has value still there.


//---------------------------------------------------------------- Structs -------------------------------------------------------------


struct PersonStruct{
    // Struct are value type so don't need initialisation
    var name: String
    var age: Int
}

//struct also have default initialiser
var personOne = PersonStruct.init(name: "Ameer", age: 23)
var personTwo = personOne
personTwo.name = "Hamza"
personTwo.age = 20

//structs are value type thats why both names are different now, as they have different memory blocks in memory
print(personOne)
print(personTwo)
