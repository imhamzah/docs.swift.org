

import Foundation

//  Closure have three component
//  1-Argument
//  2-Return type
//  3-Statements/Body

//  The start of the closure’s body is introduced by the in keyword. This keyword indicates that the definition of the closure’s parameters and return type has finished, and the body of the closure is about to begin.

//  This is a rather long-winded way to write what is essentially a single-expression function (a > b)

//  Closures as higher order functions
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward) // Normal way of sorting
print(reversedNames)


//  The example below shows a closure expression version of the backward(_:_:) function from above:
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
}) // sorting using closure
print(reversedNames)

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } ) // sorting using closures more efficiently
print(reversedNames)

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print(reversedNames)

reversedNames = names.sorted(by: { $0 > $1 } )
print(reversedNames)

reversedNames = names.sorted(by: >)
