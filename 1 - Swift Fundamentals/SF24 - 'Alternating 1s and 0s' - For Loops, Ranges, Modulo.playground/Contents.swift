//  🏔️ MTECH Code Challenge SF15: "Alternating 1s and 0s"
//  Concept: Use for loops to produce strings or collections

//  Instructions:
    //  Create a function called 'stringy' that takes a size and returns a string of alternating '1s' and '0s' that is that size.
    //  The string should start with a 1.

//  Restrictions:
    //  The size will always be positive and will only use whole numbers.

//  Examples:
    //  Input: 6
    //  Output: "101010".

    //  Input: 4
    //  Output: "1010".

    //  Input 11:
    //  Output: "10101010101".

//  ⌺ Black Diamond Challenge:
    //  Add a second parameter that takes a bool. If true, start the string with a 1; if false, start it with a 0.
    //  Alternate from there as expected, i.e. "01010"

import Foundation

func stringy(size: Int) -> String {
    var result = ""
    
    for i in 0..<size {
        if i % 2 == 0 {
            result += "1"
        } else {
            result += "0"
        }
    }
    return result
}

print(stringy(size: 6))
print(stringy(size: 4))
print(stringy(size: 11))


func stringyDecision(size: Int, startWithOne: Bool) -> String {
    var result = ""
    
    for i in 0..<size {
        let isEven = i % 2 == 0
        if startWithOne {
            result += isEven ? "1" : "0"
        } else {
            result += isEven ? "0" : "1"
            
        }
    }
    return result
}
