//  🏔️ MTECH Code Challenge SF10: "Name, Age, and Pi"
//  Concept: Practice looping over arrays

//  Instructions:
//  Create a function that takes in an array of Int's as a parameter
//  You will need to multiply each Int in the array by 5.
//  The function will return the array of new Ints.

//  ⌺ Black Diamond Challenge:
//  Create a second function for the same purpose. Return an array of Ints without using a for loop. (This will require a special method -- look it up!)

import Foundation
func multipleByFive(numbers: [Int]) -> [Int] {
    var result: [Int] = []
    
    for number in numbers {
        result.append(number * 5)
    }
    
    return result
}

func multipleWithoutLoop(collection: [Int]) -> [Int] {
    collection.map {$0 * 5}
}

let myNumbers = [1, 2, 3, 4]
let multiplied = multipleByFive(numbers: myNumbers)
print(multiplied)
