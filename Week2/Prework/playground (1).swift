import Foundation

import UIKit
/COMPLEX_TYPES
/Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]
beatles[1]

/sets
let colors = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","red","blue"])

/Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

/Arraysvssets_vs_tuples
let address = (house: 555, street: "Taylor Swift
 Avenue", city: "Nashville")
 let set = Set(["aardvark","astronaut","azalea"])
 let pythons = ["Erick","Graham","John","Michel","Terry","Terry"]

/Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

/Dictionary_default_values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

/Creating_empty_collections
var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String, Int>()
var results = Array<Int>()

/Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"
enum Result {
    case success
    case failure
}
let result4 = Result.failure

/Enum_associated_values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

/Enum_raw_values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)



/OPEREATORS_AND_CONDITIONS
/Arithmetic_Operators
let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

/Operator_overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

/Compound_assignment_operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

/Comparison_operators
let firstScore = 6
let secondScore = 4
firstScore == secondScore
firstScore != secondScore
firstScore < secondScore
firstScore >= secondScore
"Taylor" <= "Swift"

/Conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

/Combining_operators
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}


/The_ternary_operator
let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

/Switch_statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

/Range_operators
let score = 85
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


/LOOPING
/For_loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna ")
for _ in 1...5 {
    print("play")
}

/While_loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

/Repeat_loops
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")
while false {
    print("This is false")
}
repeat {
    print("This is false")
} while false

/Exiting_loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}
print("Blast off!")
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

/Exiting_multiple_loops
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

/Skipping_items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
/Infinite_loops
var counter = 0
while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

/FUNCTIONS
/Writing_functions
func printHelp() {
    let message = """
Welcome to MyApp!
Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
  print(message)
}
printHelp()

/Accepting_parameters
print("Hello, world!")
func square(number: Int) {
    print(number * number)
}
square(number: 8)

/Returning_values
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)

/Parameter_labels
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

/Omitting_parameter_labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

/Default_parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)

/Variadic_functions
print("Haters", "gonna", "hate")
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)
/Writing_throwing_functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

/Running_throwing_functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

/inout_parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10 
doubleInPlace(number: &myNum)




/STRUCTURS
/Creating_your_own_structs
/Computed_properties
/Property_observers
/Methods
/Mutating_methods
/Properties_and_methods_of_strings
/Properties_and_methods_of_arrays
/Initializers
/Referring_to_the_current_instance
/Lazy_properties
/Static_properties_and_methods
/Access_control
/Structs_summary
