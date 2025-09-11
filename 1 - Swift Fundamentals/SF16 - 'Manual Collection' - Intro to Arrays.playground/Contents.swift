//  🏔️ MTECH Code Challenge SF16: "Manual Collection"
//  Concept: Attempt to manage a large set of values without using a Collection; identify utility of arrays and dictionaries

//  Instructions:
    //  You work for a tow company. You are building an app to help them monitor and tow cars at a local lot. Unfortunately, your boss is going through a midlife crisis and for some reason, because of this he will not tolerate you using arrays or dictionaries of any kind in your code.

    //  Below is a ParkingLot class configured to hold one property, parkingSpace1. When a car is not parked, the string will be empty. When a car is parked, the car's make and model will be stored. If the car is towed, it will go back to being empty.
    //  Now, you need to scale your app to monitor 19 more parking spaces.
        //  Add 19 more parkingSpace variables to ParkingLot, each following the naming pattern: parkingSpace1, parkingSpace2, parkingSpace3, and so on.
        //  Update the parkCar and towCar functions to accept a property called parkingSpace of type Int. Park or tow the car in the appropriate parking space accordingly.

    //  The towing company has relaxed their rules and now, not every car in the parking gets towed immediately. Add two more functions, giveTicket(parkingSpace: Int) and collectFee(parkingSpace: Int).
        //  `giveTicket()` should add "- TICKETED" to the string for that parking space.
        //  `collectFee()` should charge the car's owner $1 for each character in the string for their parking space. Add to

//  Notes:
    //  The goal here is to try to handle a large set of data manually, without using a collection like Array or Dictionary. Obviously, those would be better solutions to this problem, but avoid them nonetheless.

//  ⌺ Black Diamond Challenge:
    //  A couple more functions are needed:
        //  ParkingLot.explode() should immediately cause any and all Ford Pintos to explode, thus emptying their parking space.
        //  Obviously you will want to be able to view a list of all cars parked in your lot. ParkingLot.list() should print a list of all spaces, including space number; if a space is empty, don't print an empty string, but the word "Empty" instead.

import Foundation

class ParkingLot {
    var cashCollected = 0.0
    
    var parkingSpace1 = ""
    var parkingSpace2 = ""
    var parkingSpace3 = ""
    var parkingSpace4 = ""
    var parkingSpace5 = ""
    var parkingSpace6 = ""
    var parkingSpace7 = ""
    var parkingSpace8 = ""
    var parkingSpace9 = ""
    var parkingSpace10 = ""
    var parkingSpace11 = ""
    var parkingSpace12 = ""
    var parkingSpace13 = ""
    var parkingSpace14 = ""
    var parkingSpace15 = ""
    var parkingSpace16 = ""
    var parkingSpace17 = ""
    var parkingSpace18 = ""
    var parkingSpace19 = ""
    var parkingSpace20 = ""
    
    
    func parkCar(parkingSpace: Int, carType: String) {
        switch parkingSpace {
        case 1: parkingSpace1 = carType
        case 2: parkingSpace2 = carType
        case 3: parkingSpace3 = carType
        case 4: parkingSpace4 = carType
        case 5: parkingSpace5 = carType
        case 6: parkingSpace6 = carType
        case 7: parkingSpace7 = carType
        case 8: parkingSpace8 = carType
        case 9: parkingSpace9 = carType
        case 10: parkingSpace10 = carType
        case 11: parkingSpace11 = carType
        case 12: parkingSpace12 = carType
        case 13: parkingSpace13 = carType
        case 14: parkingSpace14 = carType
        case 15: parkingSpace15 = carType
        case 16: parkingSpace16 = carType
        case 17: parkingSpace17 = carType
        case 18: parkingSpace18 = carType
        case 19: parkingSpace19 = carType
        case 20: parkingSpace20 = carType
        default: print("Invalid parking space.")
            
        }
    }
    
    func towCar(parkingSpace: Int) {
        switch parkingSpace {
        case 1: parkingSpace1 = ""
        case 2: parkingSpace2 = ""
        case 3: parkingSpace3 = ""
        case 4: parkingSpace4 = ""
        case 5: parkingSpace5 = ""
        case 6: parkingSpace6 = ""
        case 7: parkingSpace7 = ""
        case 8: parkingSpace8 = ""
        case 9: parkingSpace9 = ""
        case 10: parkingSpace10 = ""
        case 11: parkingSpace11 = ""
        case 12: parkingSpace12 = ""
        case 13: parkingSpace13 = ""
        case 14: parkingSpace14 = ""
        case 15: parkingSpace15 = ""
        case 16: parkingSpace16 = ""
        case 17: parkingSpace17 = ""
        case 18: parkingSpace18 = ""
        case 19: parkingSpace19 = ""
        case 20: parkingSpace20 = ""
        default: print("Invalid parking space.")
            
        }
    }
    
    func giveTicket(parkingSpace: Int) {
        switch parkingSpace {
        case 1: parkingSpace1 += " - TICKETED"
        case 2: parkingSpace2 += " - TICKETED"
        case 3: parkingSpace3 += " - TICKETED"
        case 4: parkingSpace4 += " - TICKETED"
        case 5: parkingSpace5 += " - TICKETED"
        case 6: parkingSpace6 += " - TICKETED"
        case 7: parkingSpace7 += " - TICKETED"
        case 8: parkingSpace8 += " - TICKETED"
        case 9: parkingSpace9 += " - TICKETED"
        case 10: parkingSpace10 += " - TICKETED"
        case 11: parkingSpace11 += " - TICKETED"
        case 12: parkingSpace12 += " - TICKETED"
        case 13: parkingSpace13 += " - TICKETED"
        case 14: parkingSpace14 += " - TICKETED"
        case 15: parkingSpace15 += " - TICKETED"
        case 16: parkingSpace16 += " - TICKETED"
        case 17: parkingSpace17 += " - TICKETED"
        case 18: parkingSpace18 += " - TICKETED"
        case 19: parkingSpace19 += " - TICKETED"
        case 20: parkingSpace20 += " - TICKETED"
        default: print("Invalid parking space")
        }
    }
    
    func collectFee(parkingSpace: Int) {
        var fee = 0
        switch parkingSpace {
        case 1: fee = parkingSpace1.count
        case 2: fee = parkingSpace2.count
        case 3: fee = parkingSpace3.count
        case 4: fee = parkingSpace4.count
        case 5: fee = parkingSpace5.count
        case 6: fee = parkingSpace6.count
        case 7: fee = parkingSpace7.count
        case 8: fee = parkingSpace8.count
        case 9: fee = parkingSpace9.count
        case 10: fee = parkingSpace10.count
        case 11: fee = parkingSpace11.count
        case 12: fee = parkingSpace12.count
        case 13: fee = parkingSpace13.count
        case 14: fee = parkingSpace14.count
        case 15: fee = parkingSpace15.count
        case 16: fee = parkingSpace16.count
        case 17: fee = parkingSpace17.count
        case 18: fee = parkingSpace18.count
        case 19: fee = parkingSpace19.count
        case 20: fee = parkingSpace20.count
        default: print("Invalid parking space")
        }
        cashCollected += Double(fee)
        print("Collected $\(fee) from parking space \(parkingSpace)")

        }
    }



var parkingLot = ParkingLot()
    
parkingLot.parkCar(parkingSpace: 1, carType: "Ford Pinto")
parkingLot.parkCar(parkingSpace: 2, carType: "Honda Civic")
parkingLot.parkCar(parkingSpace: 3, carType: "Nissan Sentra")
parkingLot.parkCar(parkingSpace: 4, carType: "Chevey Equinox")

parkingLot.giveTicket(parkingSpace: 12)

parkingLot.collectFee(parkingSpace: 19)
parkingLot.collectFee(parkingSpace: 3)

parkingLot.towCar(parkingSpace: 7)

print(parkingLot.parkingSpace1)
print(parkingLot.parkingSpace2)
print("Total cash collected: $\(parkingLot.cashCollected)")
