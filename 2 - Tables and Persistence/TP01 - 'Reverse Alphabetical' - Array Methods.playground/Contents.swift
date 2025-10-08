//  🏔️ MTECH Code Challenge TP01: "Reverse Alphabetical"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    //  Alphabetically reverse sort an array of strings.

//  Examples:
    //  Input: ["Bob", "Jill", "Sally"], Output: ["Sally", "Jill", "Bob"]
    //  Input: ["Vern", "Gidget", "Zeb"], Output: ["Zeb", "Vern", "Gidget"]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, sort every word's letters reverse alphabetically, then sort all words in the array. You do not need to retain the case of the characters.
    //  Input: ["Bob", "Jill", "Sally"]
    //  Output: ["llji", "obb", "yslla"]

import Foundation

func reverseAlphebetical(_ names: [String]) -> [String] {
    return names.sorted().reversed()
}


print(reverseAlphebetical(["Bob", "Jill", "Sally"]))
print(reverseAlphebetical(["Vern", "Gidget", "Zeb"]))

print(reverseAlphebetical(["Albert", "Dick", "Harry", "Tom"]))


func blackDiamondReverse(_ words: [String]) -> [String] {
    let transformed = words.map { word in
         let reversedLetters = word.lowercased().map { String($0) }.sorted(by: >).joined()
        return reversedLetters
    }
        return transformed.sorted()

}

print(blackDiamondReverse(["Bob", "Jill", "Sally"]))
