//  🏔️ MTECH Code Challenge ND11: "Case Comparison"
//  Concept: Practice creating extensions and comparing two variables with unique criteria

//  Instructions:
    //  Extend the Character type with a method that takes another Character as input and returns an Int as output.
    //  The method should check if the input character and the character the method is called on are the same case.
        //  If either of the characters is not a letter, return -1
        //  If both characters are the same case, return 1
        //  If both characters are letters, but not the same case, return 0

//  Examples:
    //  Input: Character("a").sameCaseAs(Character("b"))
    //  Output: 1

    //  Input: Character("C").sameCaseAs(Character("d"))
    //  Output: 0

    //  Input: Character("5").sameCaseAs(Character("f"))
    //  Output: -1

//  ⌺ Black Diamond Challenge:
    //  Make it so that your function does not rely on existing Character methods or properties (i.e., .isLowercase and .isUppercase).
    //  Use an enum as the return type instead of an Int.
    //  Add another method that will instead return the input character in the same case as self.

import Foundation

// Extends the Character type so that a custom method can be added
extension Character {
    // A method that compares the case (uppercase/lowercase) of two characters.
       // Returns:
       //   -1 if either character is not a letter
       //    1 if both characters are letters and the same case
       //    0 if both characters are letters but different cases
    func sameCaseAs(_ other: Character) -> Int {
        
        // Step 1: If either character is NOT a letter → return -1
        guard self.isLetter && other.isLetter else {
            return -1
        }
        
        // Step 2: Both are letters — now check case
        let selfUpper = self.isUppercase
        let otherUpper = other.isUppercase
        
        
        // Step 3: If both uppercase OR both lowercase → return 1
        if selfUpper == otherUpper {
            return 1
        }
        
        // Step 4: Both letters but not the same case → return 0
        return 0
    }
}

// Test
print(Character("a").sameCaseAs(Character("b")))
print(Character("C").sameCaseAs(Character("d")))
print(Character("5").sameCaseAs(Character("f")))

