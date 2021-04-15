

import Foundation

//  Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.

//  Incase of optional return type just add question mark at the end.

func greet(person: String) -> String {
    return "Hello, " + person + "!"
}
print(greet(person: "Anna"))


//-------------------------------------------------- Functions with Multiple Return Values --------------------------------------------------

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


//  Functions With an Implicit Return -- > If the entire body of the function is a single expression, the function implicitly returns that expression. For example, both functions below have the same behaviour

func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}


//-------------------------------------------------- Function Argument Labels and Parameter Names --------------------------------------------------

//      Argument Labels is used and show when function is called
//      Parameter Names are used within the scope of function

func greet(person name: String, from hometown: String) -> String {
    return "Hello \(name)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))



//-------------------------------------------------- Omitting Argument Labels --------------------------------------------------

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    print(firstParameterName,":",secondParameterName)
}
someFunction(1, secondParameterName: 2)


//-------------------------------------------------- Default Parameter Values --------------------------------------------------

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    print(parameterWithoutDefault,":",parameterWithDefault)
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)


//  Variadic Parameters -- > A variadic parameter accepts zero or more values of a specified type. You use a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called. Write variadic parameters by inserting three period characters (...) after the parameter’s type name.

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))


//  In-Out Parameters -- > If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead. if we want to change the value of parameter from within the function scope and it also reflect the changes from where it has been passed. we use inout parameters

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


//  Using Function Types --> You use function types just like any other types in Swift. For example, you can define a constant or variable to be of a function type and assign an appropriate function to that variable:

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")


//  Function Types as Parameter Types --> You can use a function type such as (Int, Int) -> Int as a parameter type for another function. This enables you to leave some aspects of a function’s implementation for the function’s caller to provide when the function is called.

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)

 
