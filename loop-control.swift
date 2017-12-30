//loop control

import UIKit

for count in 1...10 {
    print("count: \(count)")
    if count == 1 {
        print("found number: \(count)")
        break
        //go out the loop if count is equal to 1
    }
}

print("end break")

for count in 1...10{
    if count == 5 {
        continue
        //if count is equal to 5, then go to the for loop 
        //rather than going to the print statement
    }
    print("count continue:\(count)")
}