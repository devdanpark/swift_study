import UIKit

//simple if statement

let grade = 50

if grade > 30 {
    print("good")
}

if grade < 30 {
    print("noooop")
}

if grade >= 50 && grade < 90 {
    print(" you passed the test")
}

//if - else
var age = 25

if age > 20 {
    print(" you are an adult ")
} else {
    print("bro, you are young!")
    age = age + 1
    print("age \(age)")
}

