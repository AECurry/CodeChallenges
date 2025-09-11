//  🏔️ MTECH Code Challenge SF24: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
    //  Create a function that takes an integer representing a year as input, and outputs the century it is in.

//  Notes:
    //  Remember, the first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

//  Examples:
    //  Input: 1752, Output: 18
    //  Input: 1900, Output: 19
    //  Input: 1601, Output: 17
    //  Input: 2000, Output: 20

//  ⌺ Black Diamond Challenge:
    //  Output the century as an ordinal number in a String. That means 21 becomes 21st, 4 becomes 4th, etc.

import Foundation

func century(from year: Int) -> Int {
    return (year - 1) / 100 + 1
}

func ordinal(_ n: Int) -> String {
    let lastTwo = n % 100
    if lastTwo == 11 || lastTwo == 12 || lastTwo == 13 {return "\(n)th"}
    
    switch n % 10 {
    case 1: return "\(n)st"
    case 2: return "\(n)nd"
    case 3: return "\(n)rd"
    default: return "\(n)th"
    }
}

print(century(from: 1752))
print(century(from: 1900))
print(century(from: 1601))
print(century(from: 2000))
print(century(from: 1420))
