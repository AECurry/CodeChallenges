//  🏔️ MTECH Code Challenge ND15: "Goose Removal"
//  Concept: Compare two arrays and manipulate them based on the results

//  Instructions:
    //  Write a function that takes a list of strings as an argument and returns a filtered list containing the same elements but with the 'geese' removed.
    //  The geese are any strings in the 'geese' array

//  Examples:
    //  Input: ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]
    //  Output: ["Mallard", "Hook Bill", "Crested", "Blue Swedish"]

//  ⌺ Black Diamond Challenge:
    //  Extend the function to accept a second parameter, a list of additional words to filter out (e.g., 'otherBirds').
    //  The function should remove any words that are in either the 'geese' array or the 'otherBirds' array from the input list.


import Foundation


// This function takes a list of bird names and returns the list
// with all the “geese” removed.
func removeGeese(from birds: [String]) -> [String] {

    // A list of all the names of geese that we want to filter OUT.
    // Any bird matching one of these names wiil be removed from the final result.
    let geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
    
    // `filter` goes through the list and keeps only the birds that pass the test.
    // If the condition is true, the bird stays. If it's false, the bird is removed.
    return birds.filter { !geese.contains($0) }
    
}

// Sample List
let birds = ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]

// List goes through the function and a new list get stored in the 'result' with all the geese removed
let result = removeGeese(from: birds)


// Test
print(result)
