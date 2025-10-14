//  🏔️ MTECH Code Challenge TP05: "Sentence Counting"
//  Concept: Practice how to think programatically about straightforward language tasks

//  Instructions:
    //  Given a string, return the number of sentences found in the string.

//  Examples:
    //  Input: "Alas, poor Yorick! I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! my gorge rims at it."
    //  Output: 3

//  Bonus challenge:
    //  Ensure that abbreviations ("Mr.", "e.g.") don't end a sentence.
    //  Handle sentences that end with multiple punctuation marks ("!?", "...")
    //  Return an array with the sentences ordered by length.

import Foundation

//Counts sentences in a string by detecting sentence-ending punctuation
func countSentences(in text: String) -> Int {
    
//This prevents empty string from bing counted as sentences
    let trimmedText = text.trimmingCharacters(in: .whitespacesAndNewlines)
//Checks if the text is empty after trimming
    guard !trimmedText.isEmpty else { return 0 }
//CharacterSet with ".!?" detects common sentence endings
    let sentences = trimmedText.components(separatedBy: CharacterSet(charactersIn: ".!?"))
//Filters out empty or whitespace-only strings
    let nonEmptySentences = sentences.filter {
        !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
//Returns the count of valid, non-empty sentences
    return nonEmptySentences.count
}


let exampleText = "Alas, poor Yorick! I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! my gorge rims at it."

let sentenceCount = countSentences(in: exampleText)
print("Found \(sentenceCount) sentences") // Output: Found 3 sentences


print(countSentences(in: ""))
print(countSentences(in: "Hello world"))
print(countSentences(in: "First sentence. Second sentence! Third sentence?"))
