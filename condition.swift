import UIKit

let isMarried = false

print(3>10) //false
print(3 == 10) //false


//logic gate
//and(&&)
let num = 10
print(number >= 0 && number < 100)  //true
print(10>5 && 3>10) //false

//or(||)
//if there's more than one true, the output should be "true"

let age = 25
print(age < 10 || age > 25) //false
print(age > 20 || age < 20) //true

// and or

print(age > 10 && (age > 12 || age < 50)) // true

// Not
print(!(3>10)) //true
print(!(3<10)) //false
