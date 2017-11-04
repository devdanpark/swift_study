//switch
import UIKit

let grade = 80

switch grade {
    case 80, 90:
    print("you have 80 or 90")
    case 70:
    print("you have 70")
    case 50..<70
    print("you in range between 50~70")
    default:
    print("out of range")
}

print("done")