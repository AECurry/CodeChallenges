//  🏔️ MTECH Code Challenge SF07: "Persons and Students"
//  Concept: Practice creating classes, using inheritance to create subclasses, and creating initializers

//  Instructions:
    //  Under each step below, write the required code.

import Foundation

//  1) Create a Person class
    //  Include a name, age, weight, and favoriteColor properties

class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: String
    
    init(name: String, age: Int, weight: Double, favoriteColor: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}
//  2) Create a Student class
    //  This class inherits from Person.
    //  A student also has a currentClass, a grade, and a gpa property

class Student: Person {
    var currentClass: String
    var grade: Int
    var gpa: Double
    
    init(name: String, age: Int, weight: Double, favoriteColor: String, currentClass: String, grade: Int, gpa: Double) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}


//  ⌺ Black Diamond Challenge:
    //  Create a third class called Teacher.
    //  Include a reasonable set of properties.
    //  Write a function that can take either a student or a teacher and print their age.

class Teacher: Person {
    var subject: String
    var yearsOfTeachingExperience: Int
    
    init(name: String, age: Int, weight: Double, favoriteColor: String, subject: String, yearsOfTeachingExperience: Int) {
        
        self.subject = subject
        self.yearsOfTeachingExperience = yearsOfTeachingExperience
        
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}

func printAge(of person: Person) {
    print("\(person.name) is \(person.age) years old.")
}

func printfavoriteColor(of person: Person) {
    print("\(person.name)'s favorite color is \(person.favoriteColor).")
}

func printyearsOfTeachingExperience(of person: Person) {
    if let teacher = person as? Teacher{
        print("\(teacher.name) has been teaching for \(teacher.yearsOfTeachingExperience) years.")
    } else {
        print("\(person.name) is not a teacher.")
    }
}

 
let student1 = Student(name: "Alison", age: 8, weight: 65.0, favoriteColor: "Teal", currentClass: "Mrs. Tucher's", grade: 2, gpa: 4.0)

let teacher1 = Teacher(name: "Mrs. Tucker", age: 42, weight: 125.0, favoriteColor: "Red", subject: "Second Grade", yearsOfTeachingExperience: 12)

printAge(of: student1)
printAge(of: teacher1)

printfavoriteColor(of: student1)
printfavoriteColor(of: teacher1)

printyearsOfTeachingExperience(of: student1)
printyearsOfTeachingExperience(of: teacher1)
