//  🏔️ MTECH Code Challenge PC09: "Folder Cleanup"
//  Concept: Practice sorting strings by custom parameters, in this case prefixes and suffixes

//  Instructions:
    //  You are in the midst of organizing all of your coding projects. It's a mess! Every file you've ever created is located in the same folder.

    //  To clean it up, you've decided that you will use one of two organization methods.

    //  The prefix method: You will group all files with the same project name under the same folder.
    //  The suffix method: You will group all files with the same extension under the same folder.
    //  Create a function that takes in the current folder sorts the files according to the organization method (prefix or suffix). A folder is a grouping of files in the same array.

//  Examples:
    //  Sorting by project name (ex1 and ex2):
    //  Input:
        //  cleanUp(["ex1.html", "ex1.js", "ex2.html", "ex2.js"], "prefix")
    //  Output: [
        //  ["ex1.html", "ex1.js"],
        //  ["ex2.html", "ex2.js"] ]

    //  Sorting by extension (.html and .js)
    //  Input:
        //  cleanUp(["ex1.html", "ex1.js", "ex2.html", "ex2.js"], "suffix")
    //  Output: [
        //  ["ex1.html", "ex2.html"],
        //  ["ex1.js", "ex2.js"] ]

    // Input:
        //  cleanUp(["music_app.js", "music_app.png", "music_app.wav", "tetris.png", "tetris.js"], "prefix") 
    //  Output: [
        //   ["music_app.js", "music_app.png", "music_app.wav"],
        //   ["tetris.png", "tetris.js"] ]

    //  Input:
        //  cleanUp(["_1.rb", "_2.rb", "_3.rb", "_4.rb"], "suffix") 
    //  Output: [
        //  ["_1.rb", "_2.rb", "_3.rb", "_4.rb"] ]

    //  Input:
        //  cleanUp(["_1.rb", "_2.rb", "_3.rb", "_4.rb"], "prefix") 
    //  Output: [
        //  ["_1.rb"], ["_2.rb"],
        //  ["_3.rb"], ["_4.rb"] ]

//  Notes:
    //  Keep elements in the same relative order.

//  ⌺ Black Diamond Challenge:
    //  Extend the function to accept an optional third parameter, which is the custom separator. If the separator is provided, sort using the part of the file name before the separator.
    //  If the separator is not provided, fall back to the default "prefix" or "suffix" behavior.
    //  Input:
        //  cleanUp(["project-1.html", "project-2.js", "task-1.html", "task-2.js"], "custom", "-")
    //  Output: [
        //  ["project-1.html", "project-2.js"],
        //  ["task-1.html", "task-2.js"] ]



import Foundation

func cleanUp(_ input: [String], _ type: String) -> [[String]] {
    var groups: [String: [String]] = [:]
    var orderOfKeys: [String] = []
    
    for file in input {
        let components = file.components(separatedBy: ".")
        let key: String
        
        // Handles files without dots or hidden files starting with a dot
        if components.count == 1 || (components.count == 2 && components[0] == "") {
            key = (type == "prefix") ? file : "no_extension"
        } else {
            // Prefix = first part; Suffix = last part
            key = (type == "prefix") ? (components.first ?? "") : (components.last ?? "")
        }
        
        if groups[key] == nil {
            groups[key] = []
            orderOfKeys.append(key)
        }
        groups[key]?.append(file)
    }
    
    return orderOfKeys.compactMap { groups[$0] }
}

// TEST 

let messyFolder = [
    "music_app.js",     // Standard
    "music_app.png",    // Standard
    "README",           // No dot
    "archive.tar.gz",   // Multiple dots
    ".gitignore",       // Hidden (starts with dot)
    "tetris.js",        // Standard
    "setup"             // No dot
]

print("--- Testing Prefix Method ---")
let prefixResult = cleanUp(messyFolder, "prefix")
prefixResult.forEach { print($0) }

print("\n--- Testing Suffix Method ---")
let suffixResult = cleanUp(messyFolder, "suffix")
suffixResult.forEach { print($0) }
