//  🏔️ MTECH Code Challenge SF26: "Converting Time Units"
//  Concept: Practice an easy time-unit conversion problem to prepare for future challenges relating to time

//  Instructions:
    //  Your task is to write a function which returns the time since midnight in milliseconds.
    //  Your input will consist of three Int parameters which represent hours, minutes, and seconds, respectively.

//  Examples:
    //  Input: h: 0, m: 1, s: 1
    //  Output: 61000

//  ⌺ Black Diamond Challenge:
    //  Create an inverse function that takes an input in milliseconds and returns the hours, minutes, and seconds as either a tuple or a string.

import Foundation

func millisecondsSinceMidnight(hours: Int, minutes: Int, seconds: Int) -> Int {
    let totalSeconds = (hours * 3600) + (minutes * 60) + seconds
    let totalMilliseconds = totalSeconds * 1_000
    return totalMilliseconds
}

let msresult = millisecondsSinceMidnight(hours: 0, minutes: 1, seconds: 1)
print(msresult)


    
func timeFromMilliseconds(_ milliseconds: Int) -> (hours: Int, minutes: Int, seconds: Int) {
    let totalSeconds = milliseconds / 1_000
    let hours = totalSeconds / 3600
    let minutes = (totalSeconds % 3600) / 60
    let seconds = totalSeconds % 60
    return (hours, minutes, seconds)
}

let timeResult = timeFromMilliseconds(61_000)
print("Hours: \(timeResult.hours), Minutes: \(timeResult.minutes), Seconds: \(timeResult.seconds)")
