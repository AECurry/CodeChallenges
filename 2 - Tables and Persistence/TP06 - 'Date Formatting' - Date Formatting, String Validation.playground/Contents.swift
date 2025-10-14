//  🏔️ MTECH Code Challenge TP06: "Date Formatting"
//  Concept: Practice working with Date objects

//  Instructions:
    //  Create a function that returns a date from a given string.
    //  The string will always be in the format "yyyy-mm-dd".

//  Examples:
    //  Input: "1992-12-20"
    //  Output: Optional(1992-12-20 07:00:00 +0000)

    //  Input: "2001-50-90" (invalid date)
    //  Output: nil

//  ⌺ Black Diamond Challenge:
    //  Make a function that does the reverse (takes in a Date object and returns a String). Output the string in the format "Dec 20, 1992".

import Foundation

func convertToDate(_ dateString: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    
    return formatter.date(from: dateString)
}

func validateAndPrintDate(_ dateString: String) {
    if let date = convertToDate(dateString) {
        print("check '\(dateString)' -> Valid date: \(date)")
    } else {
        print("nil '\(dateString)' -> Invalid date")
    }
} 


validateAndPrintDate("1992-12-20")   
validateAndPrintDate("2001-50-90")
validateAndPrintDate("2023-05-15")
validateAndPrintDate("hello world")
