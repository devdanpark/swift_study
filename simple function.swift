//simple function

import UIKit

func sum(n1:Double, n2:Double)->Double{
    let sumValues = n1 + n2
    return sumValues

}

let r = sum(n1: 10, n2: 12)
let r2 = sum(n1: 13, n2: 16)
let r3 = sum(n1: 15, n2: 15)


func showName() {
    print("Daniel Park")
}

showName()
//Daniel Park

func showNameExt(name:String){
    print("sr. \(name)")
}

showNameExt(name: "Daniel")
showNameExt(name: "Emma")
//sr Daniel
//sr Emma