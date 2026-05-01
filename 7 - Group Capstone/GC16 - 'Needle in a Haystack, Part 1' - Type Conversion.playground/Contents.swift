//  🏔️ MTECH Code Challenge GC16: "Needle in a Haystack, Part 1"
//  Concept: Practice moving between hexadecimal, string, and integer representations of the same data.

//  Instructions:
    //  This challenge will serve to set up some basic functions you will use in part two. Create two functions:

//  Function 1:
    //  Create a function that takes in a single hexidecimal string and returns the value as an Int. (If you aren't sure how hexidecimal relates to Integer values, see the link below.)
    //  Note: You will only be dealing with hexidecimal values of two characters long.

    //  Examples:
        //  Input: "4C"
        //  Output: 76

        //  Input: "2F"
        //  Output: 47

// Function 2:
    //  Create a function that takes in an Int and returns the ASCII character associated with that int.

    //  Examples:
        //  Input: 47
        //  Output: "/"

        //  Input: 76
        //  Output: "L"

//  Notes:
    //  Helpful link: 🔗https://owlcation.com/stem/Convert-Hex-to-Decimal#:~:text=To%20convert%20a%20hexadecimal%20to,left%20when%20applying%20the%20powers.
    //  Be ready to reuse this code for the next code challenge.

//  ⌺ Black Diamond Challenge:
    //  Since this challenge builds into the next, there is no Black Diamond for this challenge.

import Foundation

func hexStringToIntManual(_ hex: String) -> Int {
    let hexDigits = Array(hex.uppercased())
    var result = 0
    
    for digit in hexDigits {
        result *= 16
        if let value = Int(String(digit)) {
            result += value
        } else if digit >= "A" && digit <= "F" {
            result += Int(digit.asciiValue! - 55)  // 'A' = 65, minus 55 = 10
        }
    }
    return result
}

// Test

let testHex = "4C"
let result = hexStringToIntManual(testHex)
print("Hex \"\(testHex)\" converts to: \(result)")

// Test multiple values
print("\nTesting multiple hex values:")
print("Hex \"2F\" = \(hexStringToIntManual("2F"))")
print("Hex \"FF\" = \(hexStringToIntManual("FF"))")
print("Hex \"0A\" = \(hexStringToIntManual("0A"))")
print("Hex \"B8\" = \(hexStringToIntManual("B8"))")

