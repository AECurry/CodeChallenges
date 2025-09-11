//  🏔️ MTECH Code Challenge SF08: "Person Behaviors"
//  Concept: Practice creating structs, comparing two structs, and mutating struct values

//  Instructions:
    //  Create a Person value type with the following attributes and behaviors:
        //  Attributes: name, age, height, weight
        //  Behaviors:
            //  greeting: Print "Hello, my name is <name>, and I am <age> years old."
            //  birthday: Increase age by one
            //  growUp: Increase height by 0.1

//  ⌺ Black Diamond Challenge:
    //  Add a variable called bodyMassIndex. Set its initial value to 0. Assuming height is in meters and weight is in kilograms, compute the bodyMassIndex property any time height and weight change.

import Foundation

struct Person: Equatable {
    var name: String
    var age: Int
    var height: Double   // meters
    var weight: Double   // kilograms

   
    var bodyMassIndex: Double {
        guard height > 0 else { return 0 }
        return weight / (height * height)
    }

    func greeting() {
        print("Hello, my name is \(name), and I am \(age) years old.")
    }

    mutating func birthday() {
        age += 1
    }

    mutating func growUp() {
        height += 0.1
    }
}


var person1 = Person(name: "Billy Bob", age: 25, height: 1.65, weight: 59.0)
var person2 = Person(name: "Billy Bob", age: 26, height: 1.65, weight: 59.0)

print(person1 == person2)     // false
print(person1.bodyMassIndex)  // ~21.7
