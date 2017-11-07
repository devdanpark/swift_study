// Array
import UIKit

let num1 = 10
let num2 = 20
let num3 = 30
let num4 = 40
let num5 = 50

var arr = [10,20,30,40,50]
for item in arr {
    print("ar:\(item)")
}

for index in 0...4{
    print("arr for index \(ar[index])")
}
///

var names = [String]()
names.append("Daniel")
names.append("Lee")
names.append("Emma")

names.remove(at:1) // remove "Lee"
for name in names {
    print(name)
}

var ar:Any=[1.1, 1.5, "abcd", true] //Any type