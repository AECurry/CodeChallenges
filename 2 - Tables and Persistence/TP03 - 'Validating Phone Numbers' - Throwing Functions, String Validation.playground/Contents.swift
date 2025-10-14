//  🏔️ MTECH Code Challenge TP03: "Validating Phone Numbers"
//  Concept: Practice validating inputs to make sure they're what you're expecting; practice formatting text (you'll have to do this all the time!); practice using throwing functions to produce errors when something goes wrong

//  Instructions:
    // The API you're using needs a specific format for phone numbers: (xxx)-xxx-xxxx.
    // Write a throwing function that takes in a string and returns a formatted phone string, or throws if the string that was passed in is not a valid phone number.

//  Examples:
    //  Input: "5558675309"
    //  Output: "(555)-867-5309"

    //  Input: "phone number"
    //  Output: no output produced, error thrown and caught instead

//  ⌺ Black Diamond Challenge:
    //  Add a parameter to your function that allows you to select a country from an enum of supported phone number formats. Make it so your app successfully validates and formats phone numbers for three other countries.
    //  You can find phone number formats here: 🔗https://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers

import Foundation

enum PhoneNumerError: Error {
    case invalidNumber
    
}

func formatPhoneNumber(_ input: String) throws -> String { 
    
    let digits = input.filter(\.isNumber)
    
    guard digits.count == 10 else { return "nil" }
    
    let area = digits.prefix(3) // checks out the first 3 digits
    let mid = digits.dropFirst(3).prefix(3) // drops the first 3 digits and checks out the next 3 digits
    let last = digits.suffix(4) // drops the previous 3 digits and checks out the remaining 4 digits
    
    return "(\(area)-\(mid)-\(last)"
}


let testNumber = ["5558675309", "12345", "phone number", "801-321-5555"]

for number in testNumber {
    
    do {
        print("Input:", number, "→", try formatPhoneNumber(number))
    } catch {
        print("Input:", number, "→ Error: Invalid 10-digit number.")
    }
}
