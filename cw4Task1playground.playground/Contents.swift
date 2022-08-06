import UIKit

let name = "Saleh"
let yearOfBirth = 2005
let monthOfBirth = 3
let dayOfBirth = 8

func calculateAge(cy:Int, cm: Int, cd: Int, yob: Int, mob: Int, dob: Int) -> Int {
    
    var years = cy - yob
    
    if cm > mob {
        //
    } else if cm == mob && cd >= dob {
        //
    } else if cm == mob && cd < dob {
        years -= 1
    } else {
        years -= 1
    }
    
    return years
    
}

func checkAge(_ age: Int) -> String {
    
    var status:String
    
    if age >= 14 && age <= 18 {
        status = "Allowed to join"
    } else if age > 18 {
        status = "Too old to join"
    } else {
        status = "Too young to join"
    }
    
    return status
    
}


var age = calculateAge(cy: 2022, cm: 8, cd: 6, yob: yearOfBirth, mob: monthOfBirth, dob: dayOfBirth)

print("Hello, my name is \(name) and my age is \(age).")

var status = checkAge(age)

print(status)


var num1String = "8"
var num2Int = 4

var num1Double = Double(num1String) ?? 0.0
var num2Double = Double(num2Int)

var num3 = num1Double + num2Double

print(num3)
