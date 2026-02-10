//  🏔️ MTECH Code Challenge SD05: "String Chopper"
//  Concept: Practice using a string as a collection, evaluating and modifying it as needed

//  Instructions:
    //  Create a function that accepts str and cases as parameters where the string is split into N distinct cases of equal length as shown below

//  Examples:
    //  Input: splitNCases("Strengthened", 6), Output: ["St", "re", "ng", "th", "en", "ed"]
    //  Input: splitNCases("Unscrupulous", 2), Output: ["Unscru", "pulous"]
    //  Input: splitNCases("Flavorless", 1), Output: ["Flavorless"]

//  Notes:
    //  If it's not possible to split the string as described, return nil.

//  ⌺ Black Diamond Challenge:
    //  Write another function that will split the string even if it is not evenly divisible.
    //  Input: splitNCasesUnevenly("Characters", 3), Output: ["Cha", "rac", "ters"]

import Foundation

func splitNCases(_ str: String, _ cases: Int) -> [String]? {
    guard cases > 0 else { return nil }
    
    let characters = Array(str)
    
    guard characters.count % cases == 0 else { return nil }
    
    let chunkSize = characters.count / cases
    var result: [String] = []
    
    for i in 0..<cases {
        let start = i * chunkSize
        let end = start + chunkSize
        let chunk = String(characters[start..<end])
        result.append(chunk)
    }
    
    return result
}


// Test
print(splitNCases("Strengthened", 6) ?? [])
print(splitNCases("Unscrupulous", 2) ?? [])
print(splitNCases("Flavorless", 1) ?? [])
print(splitNCases("Hello", 3) ?? [])
