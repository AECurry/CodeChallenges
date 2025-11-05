//  🏔️ MTECH Code Challenge TP19: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
    //  When provided with a letter, return its position in the English alphabet.
    //  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
    //  Input: "a"
    //  Output: 1

//  Notes:
    //  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
    //  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
    //  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation

func alphabetPosition(of letter: Character) -> Int? {
    
    let lowercased = String(letter).lowercased()
    let alphabet = "abcdefghijklmnopqurstuvwxyz"
    
    if let index = alphabet.firstIndex(of: Character(lowercased)) {
        return alphabet.distance(from: alphabet.startIndex, to: index) + 1
    }

    return nil

}

print(alphabetPosition(of: "a") ?? "Not a letter")
print(alphabetPosition(of: "z") ?? "Not a letter")
print(alphabetPosition(of: "p") ?? "Not a letter")
print(alphabetPosition(of: "1") ?? "Not a letter")



// Black Diamond
func alphabetPositionsSum(of string: String) -> Int? {
    var sum = 0
    
    for character in string {
        let lowercased = Character(character.lowercased())
        guard let asciiValue = lowercased.asciiValue else { return nil }
        
        let position = Int(asciiValue - 96)
        guard(1...26).contains(position) else { return nil }
        
        sum += position
    }
    
    return sum
}

print(alphabetPositionsSum(of: "abc") ?? "nil")
print(alphabetPositionsSum(of: "a") ?? "nil")
print(alphabetPositionsSum(of: "z") ?? "nil")
print(alphabetPositionsSum(of: "123") ?? "nil")
print(alphabetPositionsSum(of: "alphabet") ?? "nil")
 
