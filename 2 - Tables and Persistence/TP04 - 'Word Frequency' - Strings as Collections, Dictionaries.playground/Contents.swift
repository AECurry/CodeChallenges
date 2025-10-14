//  🏔️ MTECH Code Challenge TP04: "Word Frequency"
//  Concept: Practice evaluating Strings.

//  Instructions:
//  Write a function that tells how many times a given word occurs in a string.
//  The function should take in a string and return a dictionary with the frequency of each word.

//  Notes:
//  You may assume the string will not contain any punctuation, but different capitalizations of a word should count as the same word.

//  Examples:
//  Input: "Beware the Jabberwock my son The jaws that bite The claws that catch"
//  Output: ["son": 1, "jabberwock": 1, "my": 1, "beware": 1, "jaws": 1, "that": 2, "the": 3, "claws": 1, "catch": 1, "bite": 1]

//  ⌺ Black Diamond Challenge:
//  Change your function to allow for punctuation in the input string without causing words to be counted incorrectly.
//  Order your output dictionary by frequency.

import Foundation

func wordFrequency(from text: String) -> [String: Int] {
    let words = text
        .lowercased()
        .split(separator: " ")
    
    var wordCounts: [String: Int] = [:]
    
    for word in words {
        wordCounts[String(word), default: 0] += 1
    }
    
    return wordCounts
}

let text = "Beware the Jabberwock my son the jaws that bite the claws that catch"
let frequencies = wordFrequency(from: text)

print(frequencies)



import Foundation

func wordFrequencyChallenge() {
    let quote = "Beware, the Jabberwock, my son! The jaws that bite, the claws that catch!"
    
    let cleanedText = quote
        .lowercased()
        .components(separatedBy: CharacterSet.punctuationCharacters)
        .joined()
    
    let words = cleanedText.split(separator: " ")

    var wordCounts: [String: Int] = [:]
    for word in words {
        wordCounts[String(word), default: 0] += 1
    }
    

    let sortedWordCounts = wordCounts.sorted { $0.value > $1.value }
    
    print(sortedWordCounts)
}


wordFrequencyChallenge()
