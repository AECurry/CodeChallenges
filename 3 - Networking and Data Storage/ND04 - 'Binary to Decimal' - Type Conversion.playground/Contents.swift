//  🏔️ MTECH Code Challenge ND04: "Binary to Decimal"
//  Concept: Practice moving between different representations of the same data

//  Instructions:
    //  Create a function that takes a String as input and returns an Int.
    //  The input string will be a binary number. Return it as a base 10 number.

    //  Helpful Link: 🔗https://www.cuemath.com/numbers/binary-to-decimal/

//  Examples:
    //  Input: 10010001
    //  Output: 145

//  ⌺ Black Diamond Challenge:
    //  Create another function that converts an Int to binary representation in a String.
    //  Add your functions as extensions of String and Int, respectively, so they can be called directly on any String or Int. You will need to also add input validation so you can be certain that a String is in binary format when the user tries to convert it; return nil if the input is invalid.

import Foundation

// A function that uses a binary string and converts it into a base-10 integer.
func binaryToDecimal(_ binary: String) -> Int {

    // tells the computer to read the string as a binary number and return 0 if it's not
    return Int(binary, radix: 2) ?? 0
}

// Test

print(binaryToDecimal("10010001"))
print(binaryToDecimal("111"))
print(binaryToDecimal("10101010"))



//Black Diamond Challenge

// MARK: - String Extension (Binary → Decimal)
extension String {
    
    /// Converts a binary string (e.g., "1011") into a decimal integer.
    /// Returns nil if the string contains anything other than 0s and 1s.
    func binaryToDecimal() -> Int? {
        
        /// Validate: ensure every character is either '0' or '1'
        guard allSatisfy({ $0 == "0" || $0 == "1" }) else {
            return nil
        }
        
        /// Convert a binary string to an Int using radix 2
        return Int(self, radix: 2)
    }
}

// Int Extension (Decimal → Binary)
extension Int {
    
    /// Converts an integer into its binary string representation.
    func toBinary() -> String {
        /// Converts the Int to a binary string using base 2
        return String(self, radix: 2)
    }
}

// Test
print("1011001".binaryToDecimal() ?? 0)
print("abc101".binaryToDecimal() ?? 0)
print(42.toBinary())
print(255.toBinary())
