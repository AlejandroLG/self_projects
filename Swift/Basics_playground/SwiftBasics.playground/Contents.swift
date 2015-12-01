//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Defining a new variable with the 'var' keyword
// With the define the type of the variable with ": <data_type>"
var greeting:String = "Hello"
greeting = "Bonjour"
print(greeting)

// Defining a new variable without a specifying the type.
// This is called 'type inference'
var secondGreeting = "Hello"
print(secondGreeting)

// Redefining the variable 'newGreeting' to int value.
// This causes an error because we're specifying an String value first and
// then and int value.
//secondGreeting = 23      // discomment this line to se the error.
print(secondGreeting)

// Adding the word 'world' to the 'newGreeting' variable.
// This is possible beacause strings in swift are mutable.
secondGreeting += " World"
print(secondGreeting)
secondGreeting.append(Character("!"))
print(secondGreeting)

// Declaring a constant
// let -> inmutable variables
// var -> mutable values
let thirdGreeting = "Hola"

var fourthGreeting = "Hola mundo".capitalizedString
print(fourthGreeting)

print(fourthGreeting.stringByAppendingString(" en swift"))

// Copying variables -> When a variable is assigned to another variable, it is copied
// to the assigning variable, so the original value never looses
var fifthGreeting = fourthGreeting;
fifthGreeting += " y en objective-c"
print(fifthGreeting)
print(fourthGreeting)

// using underscore character to use as thousands separator
let million = 1_000_000
print(million)

var radius = 4
let pi = 3.1416
// The next line makes a built-in error cause the compiler cant find a function
// that multiplies an Int with a Double (all operations are functions)
//var area = radius * radius * pi

// All numeric type conversions must be explicit regardless of wheter you want 
// to convert to a type with more or less precision.
var area = Double(radius) * Double(radius) * pi

// Bounds Checking -> Swift is preventing from storing a number that's larger 
// than the maximum capacity of the Int type.
//var overlow = Int.max + 1

// Declaring a boolean, boolean variables only admmit true or false.
let alwaysTrue = true

// Tuples
var address = (26, "Circuit Street")
print(address.0)
print(address.1)
// Swift safety feature. You can't access to a memeber that doesn't exist.
//print(address.3)
address.0 = 29
print(address.0)

// Using alias to explicit the type of data to be used.
var addressTwo: (Int, String) = (200, "Hermenegildo Galena")

// Desconstructing a tuple into two parts, house and neighbor.
let(house, neighbor) = addressTwo
print(house)
print(neighbor)

// Naming the elements of a tuple
var addressThree = (number:255, city:"Cuautla")
print(addressThree.number)
print(addressThree.city)

var addressFour = (755, "Carrazco")
let (number, street) = addressFour
// Changing the value of int type into String.
// This is not a casting operation, it creates a new instance of type String.
print("I live at " + String(number) + ", " + street)

// <<<<<<<<<<<<<< STRING INTERPOLATION >>>>>>>>>>>>>> //

// Using String interpolation.
print("I live at \(number), \(street)")

// String interpolation can admit constants, variables and expressions without
// string literals.
let addressFive = "I live at \(number + 10), \(street.uppercaseString)"
print(addressFive)

/******************* CONTROL FLOW ******************/

// <<<<<<<<<<<<<<<<< FOR LOOPS >>>>>>>>>>>>>>>>>>> //
// You don’t use var when constructing a for-in loop because you aren’t 
// actually defining a variable. Instead, the for-in loop assigns a new 
// constant value on each iteration.
let sixthGreeting = "Swift by tutorials Rocks !!"
// (...) closed range operator, The closed range operator creates a struct of type Range
for i in 1...5 {
    print("\(i) - \(sixthGreeting)")
}

var range = 1...5
for i in range {
    print("\(i) - \(sixthGreeting)")
}

var rangeTwo = Range(start: 1, end: 6)
for i in rangeTwo {
    print("\(i) - \(sixthGreeting)")
}

for i in 1..<5 {    // it's equal to 1...4, 1...5-1
    print("\(i) - \(sixthGreeting)")
}

// for-in loop can enumerate many types like : ranges, arrays, dictionaries
// Types that implement the Sequence protocol expose a generate method which 
// returns a Generator. Generators have a single method that allows you to request 
// their next value.

// <<<<<<<<<<<<<<<<< WHILE LOOPS >>>>>>>>>>>>>>>>>>> //

let seventhGreeting = "Swfit by tutorials"
var i = 0
while i < 5 {
    print("\(i) - \(seventhGreeting)")
    i++
}

// <<<<<<<<<<<<<<<<< DO-WHILE LOOPS >>>>>>>>>>>>>>>>>>> //

let eighthGreeting = "Swift by tutorials part 2"
var i2 = 0
while i2 < 5 {
    print("\(i2) - \(eighthGreeting)")
    i2++
}

// <<<<<<<<<<<<<<<<< IF STATEMENTS >>>>>>>>>>>>>>>>>>> //


