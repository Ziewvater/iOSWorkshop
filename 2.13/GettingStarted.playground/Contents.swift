
//
// Variables
//

// Variables are declared with the `var` keyword
// Swift is "strongly typed", which means that all variables must have a clearly defined type
// Variable declarations take the form
//     var {{variable_name}}: {{variable_type}} = {{value}}
// The following line shows a variable named "firstName" that is of type `String`

var firstName: String = "Keith"

// Basic Swift types
var truth: Bool = true
var num: Int = 7
var text: String = "Some text"


// Swift has a pretty strong type inference system, so you don't necessarily have to declare 
// a variable's type each time.

var lastName = "Johnson" // automatically determined to be of type `String`


// Variables can be modified
lastName = "Chris" // lastName now has value "Chris"


// Simple mathematical operations can be done on numbers
var sum = 3 + 5         // 8
var difference = 9 - 6  // 3
var product = 2.0 * 3.5 // 7.0
var quotient = 8 / 4    // 2


// Mathematical operators can only be used on variables or values of the same type
var aNumber: Int = 4
var anotherNumber: Double = 0.5
// The following line will not compile.
//    var sum2 = aNumber + anotherNumber
//               ^`Int`    ^`Double`

// You can get around this issue by creating a properly typed variable with the associated value
var sum2 = Double(aNumber) + anotherNumber


//
// Functions
//

// Functions are declared using the `func` keyword
// Swift functions need to declare what arguments they accept, the types of those arguments,
// and the type of the returned value. 

func addFive(x: Int) -> Int {
    return x + 5
}

var aNumberPlusFive = addFive(aNumber)

// Some functions don't have a return type.
// These functions don't return anything from their body, either by omitting the `return` 
// keyword, or by using `return` without a variable following it.

func logNumber(number: Int) {
    print("Number is: \(number)")
}

logNumber(aNumberPlusFive)


//
// Control Flow
//

// `if`/`else` keywords are the basic means of control flow within Swift

func validBusFare(busFare: Double) -> Bool {
    if busFare == 2.50 {
        return true
    } else {
        return false
    }
}

// Swift also has other common control flow patterns like `switch` statements, and a few
// more less common and more specialized patterns like `guard` statements and `where` clauses.
// These other patterns are certainly useful and can be very valuable, but you can also get by
// with just simple `if`/`else` patterns.


//
// Classes
//

// Swift is an Object-Oriented Programming (OOP) language. There's a lot to unpack to fully get 
// what that means, but very basically it means that programs written in Swift are composed of
// self-contained "objects" that interact with each other. Objects hold on to information about
// themselves, and have functions on them that define their behavior. 

// NOTE: an object's variables are known as "attributes" or "properties", and their functions are
// known as "methods".

// Classes are blueprints for objects. They define what attributes and methods a given object
// type has. Two objects that share the same class can be expected to behave similarly.
// Classes are defined with the `class` keyword

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func greetPerson(otherPerson: Person) {
        print("Hi \(otherPerson.firstName), I'm \(self.firstName)!")
    }
}

var firstPerson = Person(firstName: "Kelsey", lastName: "Johnson")
var secondPerson = Person(firstName: "Hat", lastName: "Francis")

firstPerson.greetPerson(secondPerson)