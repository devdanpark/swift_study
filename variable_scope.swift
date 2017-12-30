// variable scope

import UIKit

let name2 = "daniel" //public

func show(){
    let name = "daniel" //local
    print(name)
}

print(name) // not printed as name is in the function show
print(name2) //printed because name2 is declared as a public variable

let age = 18
if age > 17 {
    let job = "ceo"
    print(job)
}

print(job) // error