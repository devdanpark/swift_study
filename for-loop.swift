//for loop

import UIKit

for index in 1...10 {
    //block of code
    if index % 2 == 0 {
        print("number: \(index)")
    }
}
for index in 1..<10 {
    print("number adv:\(index)")
}

print("done")

let names = ["daniel", "dan", "emma"]
for name in names {
    print(name)
}

//nested for loop

for index in 1...5 {
    //block of code
    print("index: \(index)")
    for item in 1..10 {
        print("item: \(item)")
    }
}