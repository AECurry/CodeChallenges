//  🏔️ MTECH Code Challenge ND14: "Is It Today?"
//  Concept: Practice navigating the complexities of Date objects

//  Instructions:
    //  Write a simple function that takes a Date as a parameter and returns a Boolean representing whether the date is today or not.
    //  Make sure that your function does not return a false positive by only checking the day--the year needs to be correct, as well.

//  Examples:
    //  Input: A date representing 7/26/24 @ 9:29:30 AM
    //  Today is: 7/26/24 @ 10:45:55 AM
    //  Output: true

    //  Input: A date representing 7/26/99 @ 10:45:55 AM
    //  Today is: 7/26/24 @ 10:45:55 AM
    //  Output: false (different years)

//  ⌺ Black Diamond Challenge:
    //  Create another function, once again taking a Date as a parameter and comparing it to the current Date. This time, output whether it is within the same hour of the day as the given Date (i.e., the Date parameter is at 9:45 and it is currently 9:15, return true as it is 9:00)

import Foundation

// This function takes any Date and tells us whether it’s actually today.
// It makes sure the year, month, and day all match—not just the number on the calendar.
func isToday(_ date: Date) -> Bool {
    
    // Get the user's current calendar (respects region & settings)
    let calendar = Calendar.current
   
    
    // This built-in method checks if the given date falls within "today"
        // It compares year, month, and day — not just the day number.
        return calendar.isDateInToday(date)
}

// Function to compare two dates for the same calendar day
func isSameDay(_ date1: Date, _ date2: Date) -> Bool {
    let calendar = Calendar.current
    return calendar.isDate(date1, inSameDayAs: date2)
}


// Test with 'pretend' dates

let calendar = Calendar.current

// Pretend "today" for testing
let pretendTodayComponents = DateComponents(year: 2024, month: 7, day: 26, hour: 10, minute: 45, second: 0)
let pretendToday = calendar.date(from: pretendTodayComponents)!

// Test date that should match pretend today
let test1Components = DateComponents(year: 2024, month: 7, day: 26, hour: 9, minute: 29, second: 30)
let testDate1 = calendar.date(from: test1Components)!

// Test date that should NOT match pretend today
let test2Components = DateComponents(year: 1999, month: 7, day: 26, hour: 10, minute: 45, second: 55)
let testDate2 = calendar.date(from: test2Components)!


// Run Tests
print("Test 1 (should be true):", isSameDay(testDate1, pretendToday))
print("Test 2 (should be false):", isSameDay(testDate2, pretendToday))

// MARK: - Check actual today
let realToday = Date()
print("Is now today?", isToday(realToday))
